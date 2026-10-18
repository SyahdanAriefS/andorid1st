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
  bool _isLoading = false;

  void _submit() async {
    final user = _usernameController.text.trim();
    final pass = _passwordController.text;

    if (user.isEmpty || pass.isEmpty) {
      setState(() => _errorMessage = 'Username dan Password tidak boleh kosong!');
      return;
    }

    setState(() {
      _isLoading = true;
      _errorMessage = '';
    });

    // Panggil fungsi login yang sekarang terhubung ke server
    final success = await _authService.login(user, pass);
    
    // Hapus password dari memory
    _passwordController.clear(); 

    if (!mounted) return;

    if (success) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    } else {
      setState(() {
        _isLoading = false;
        _errorMessage = 'Login gagal. Kredensial ditolak oleh server.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Dashboard (Server-Side)'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.security, size: 80, color: Colors.blueGrey),
            const SizedBox(height: 20),
            TextField(controller: _usernameController, decoration: const InputDecoration(labelText: 'Username')),
            const SizedBox(height: 16),
            TextField(controller: _passwordController, obscureText: true, decoration: const InputDecoration(labelText: 'Password')),
            const SizedBox(height: 16),
            if (_errorMessage.isNotEmpty) Text(_errorMessage, style: const TextStyle(color: Colors.red)),
            const SizedBox(height: 16),
            _isLoading 
                ? const CircularProgressIndicator() 
                : ElevatedButton(onPressed: _submit, child: const Text('Login')),
          ],
        ),
      ),
    );
  }
}
