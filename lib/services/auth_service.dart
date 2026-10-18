import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AuthService {
  final _secureStorage = const FlutterSecureStorage();
  final String _baseUrl = dotenv.env['BACKEND_URL'] ?? 'http://127.0.0.1:8000';

  // 1. FUNGSI LOGIN (Menyimpan 2 jenis token)
  Future<bool> login(String username, String password) async {
    try {
      final response = await http.post(
        Uri.parse('$_baseUrl/auth/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'username': username, 'password': password}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        
        // Simpan access_token dan refresh_token ke brankas
        await _secureStorage.write(key: 'access_token', value: data['access_token']);
        await _secureStorage.write(key: 'refresh_token', value: data['refresh_token']);
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  // 2. MENGAMBIL ACCESS TOKEN (Digunakan oleh ApiService)
  Future<String?> getToken() async {
    return await _secureStorage.read(key: 'access_token');
  }

  // --- FUNGSI BARU: MENUKAR REFRESH TOKEN ---
  Future<bool> refreshToken() async {
    final refreshTokenStr = await _secureStorage.read(key: 'refresh_token');
    
    // Jika tidak ada refresh token di memori, otomatis gagal
    if (refreshTokenStr == null) return false;

    try {
      final response = await http.post(
        Uri.parse('$_baseUrl/auth/refresh'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'refresh_token': refreshTokenStr}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        
        // Simpan pasangan token yang baru didapat ke brankas
        await _secureStorage.write(key: 'access_token', value: data['access_token']);
        await _secureStorage.write(key: 'refresh_token', value: data['refresh_token']);
        return true; // Berhasil memperbarui sesi
      }
      
      return false; // Gagal (Refresh token sudah > 1 hari atau di-blacklist)
    } catch (e) {
      return false; // Gagal karena masalah jaringan
    }
  }

  // 3. FUNGSI LOGOUT (Memberi tahu server untuk menghancurkan token)
  Future<void> logout() async {
    final accessToken = await _secureStorage.read(key: 'access_token');
    final refreshToken = await _secureStorage.read(key: 'refresh_token');

    // Jika token masih ada, kirim request ke backend untuk diblacklist
    if (accessToken != null && refreshToken != null) {
      try {
        await http.post(
          Uri.parse('$_baseUrl/auth/logout'),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $accessToken',
          },
          body: jsonEncode({'refresh_token': refreshToken}),
        );
      } catch (e) {
        // Abaikan jika gagal koneksi, yang penting token lokal tetap dihapus
      }
    }

    // Hapus kedua token dari memori HP
    await _secureStorage.delete(key: 'access_token');
    await _secureStorage.delete(key: 'refresh_token');
  }

  // Cek sesi
  Future<bool> isLoggedIn() async {
    final token = await getToken();
    return token != null;
  }
}
