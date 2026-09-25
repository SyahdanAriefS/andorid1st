import 'dart:convert';
import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/io_client.dart';

class ApiService {
  Future<Map<String, dynamic>> search(String query) async {
    final sanitizedQuery = query.replaceAll(RegExp(r'[^a-zA-Z0-9\.\-\_]'), '');
    final url = Uri.parse('https://www.virustotal.com/api/v3/search?query=$sanitizedQuery');
    
    // Memanggil API Key
    final apiKey = dotenv.env['VT_API_KEY'] ?? '';

    // 1. Matikan semua sertifikat bawaan OS Android
    SecurityContext securityContext = SecurityContext(withTrustedRoots: false);
    HttpClient httpClient = HttpClient(context: securityContext);

    // ==========================================
    // STRATEGI BARU: CALLBACK SSL PINNING
    // ==========================================
    // Menangkap sertifikat yang ditolak OS dan melakukan inspeksi manual
    httpClient.badCertificateCallback = (X509Certificate cert, String host, int port) {
      // VirusTotal diamankan secara resmi oleh Google
      final bool isVirusTotalHost = host == 'www.virustotal.com';
      final bool isTrustedIssuer = cert.issuer.contains('Google Trust Services');
      
      // Jika Host dan Penerbitnya benar, izinkan koneksi
      if (isVirusTotalHost && isTrustedIssuer) {
        return true; 
      }
      
      // Jika BurpSuite mencoba masuk, Issuer akan berubah menjadi PortSwigger
      // Aplikasi akan merespons dengan false (Koneksi Ditolak)
      return false; 
    };

    IOClient secureClient = IOClient(httpClient);

    final response = await secureClient.get(
      url,
      headers: {'x-apikey': apiKey, 'Accept': 'application/json'},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    throw Exception('Status HTTP: ${response.statusCode}');
  }
}
