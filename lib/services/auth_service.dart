import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  final _secureStorage = const FlutterSecureStorage();

  // 1. Cek apakah ini pertama kali aplikasi dibuka (brankas kosong)
  Future<bool> isFirstRun() async {
    final validHash = await _secureStorage.read(key: 'saved_hash');
    return validHash == null;
  }

  // 2. Fungsi untuk mengatur kredensial pertama kali (Tanpa Hardcode)
  Future<void> registerAdmin(String username, String password) async {
    final bytes = utf8.encode(password);
    final hash = sha256.convert(bytes).toString();

    await _secureStorage.write(key: 'saved_username', value: username);
    await _secureStorage.write(key: 'saved_hash', value: hash);
  }

  // 3. Fungsi login murni, akan gagal jika kredensial tidak cocok
  Future<bool> login(String username, String password) async {
    final bytes = utf8.encode(password);
    final inputHash = sha256.convert(bytes).toString();

    final validUser = await _secureStorage.read(key: 'saved_username');
    final validHash = await _secureStorage.read(key: 'saved_hash');

    if (username == validUser && inputHash == validHash) return true;
    
    await Future.delayed(const Duration(seconds: 2)); // Anti Brute-Force
    return false;
  }
}
