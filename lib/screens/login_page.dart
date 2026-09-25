import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _authService = AuthService();
  
  String _errorMessage = '';
  bool _isFirstRun = false; // Penanda mode halaman

  @override
  void initState() {
    super.initState();
    _checkFirstRun();
  }

  // Mengecek isi brankas saat halaman dimuat
  Future<void> _checkFirstRun() async {
    final firstRun = await _authService.isFirstRun();
    setState(() {
      _isFirstRun = firstRun;
    });
  }

  void _submit() async {
    final user = _usernameController.text.trim();
    final pass = _passwordController.text;

    if (user.isEmpty || pass.isEmpty) {
      setState(() => _errorMessage = 'Username dan Password tidak boleh kosong!');
      return;
    }

    _passwordController.clear(); // Sanitasi RAM

    if (_isFirstRun) {
      // MODE REGISTRASI: Simpan input pengguna ke brankas
      await _authService.registerAdmin(user, pass);
      if (!mounted) return;
      
      // Langsung masuk setelah registrasi sukses
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
    } else {
      // MODE LOGIN: Cocokkan dengan isi brankas
      if (await _authService.login(user, pass)) {
        if (!mounted) return;
        Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
      } else {
        setState(() => _errorMessage = 'Username atau password salah!');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Judul berubah otomatis menyesuaikan kondisi brankas
        title: Text(_isFirstRun ? 'Setup Admin Baru' : 'Login Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _isFirstRun ? Icons.person_add : Icons.security, 
              size: 80, 
              color: _isFirstRun ? Colors.blue : Colors.blueGrey
            ),
            const SizedBox(height: 20),
            if (_isFirstRun)
              const Text(
                'Brankas kosong. Buat Username & Password baru Anda.',
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            const SizedBox(height: 20),
            TextField(controller: _usernameController, decoration: const InputDecoration(labelText: 'Username')),
            const SizedBox(height: 16),
            TextField(controller: _passwordController, obscureText: true, decoration: const InputDecoration(labelText: 'Password')),
            const SizedBox(height: 16),
            if (_errorMessage.isNotEmpty) Text(_errorMessage, style: const TextStyle(color: Colors.red)),
            ElevatedButton(
              onPressed: _submit, 
              child: Text(_isFirstRun ? 'Simpan & Masuk' : 'Login')
            ),
          ],
        ),
      ),
    );
  }
}
