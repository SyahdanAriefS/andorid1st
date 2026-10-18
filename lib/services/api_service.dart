import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'auth_service.dart';

class ApiService {
  // Variabel public agar authService bisa diakses dari file lain (seperti home_page.dart)
  final authService = AuthService();
  
  // Mengambil URL backend dari file .env
  final String _baseUrl = dotenv.env['BACKEND_URL'] ?? 'http://127.0.0.1:8000';

  Future<Map<String, dynamic>> search(String query) async {
    // 1. Ambil Access Token dari penyimpanan lokal
    final token = await authService.getToken();
    
    // Jika tidak ada token, langsung lempar error agar UI mengarahkan ke halaman login
    if (token == null) {
      throw Exception('UNAUTHORIZED'); 
    }

    // Membersihkan input kueri dari karakter yang tidak diinginkan
    final sanitizedQuery = query.replaceAll(RegExp(r'[^a-zA-Z0-9\.\-\_]'), '');
    
    // 2. Tembak ke endpoint pencarian di server Python lokal
    final url = Uri.parse('$_baseUrl/api/search?query=$sanitizedQuery');
         
    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $token', // Membawa token JWT untuk verifikasi sesi
        'Accept': 'application/json'
      },
    );

    // 3. Tangani respons dari server
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    
    // Jika server Python menolak karena token kedaluwarsa atau tidak valid
    if (response.statusCode == 401) {
       throw Exception('UNAUTHORIZED'); 
    }
    
    // Untuk error lainnya (seperti 500 Internal Server Error, dll)
    throw Exception('Status HTTP: ${response.statusCode}');
  }
}
