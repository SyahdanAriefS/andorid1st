import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:crypto/crypto.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env"); // Memuat variabel lingkungan
  runApp(const VirusTotalApp());
}

class VirusTotalApp extends StatelessWidget {
  const VirusTotalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VT Scanner',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.dark, // Tema gelap cocok untuk aplikasi security
      ),
      home: const LoginPage(),
    );
  }
}

// ==========================================
// HALAMAN LOGIN
// ==========================================
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _errorMessage = '';

  void _login() {
  // 1. Ambil dari .env dan buang spasi tak kasat mata
  final validUser = (dotenv.env['APP_USERNAME'] ?? '').trim();
  final validHash = (dotenv.env['APP_PASSWORD_HASH'] ?? '').trim();

  // 2. Ambil input user dan buang spasi ekstra dari keyboard
  final inputUser = _usernameController.text.trim();
  final inputPass = _passwordController.text; // Password tidak di-trim agar akurat

  // 3. Buat Hash dari input
  final bytes = utf8.encode(inputPass);
  final inputHash = sha256.convert(bytes).toString();

  // === ALAT PENYADAP (DEBUGGING) ===
  print("=== DEBUG LOGIN ===");
  print("User Input  : '$inputUser'");
  print("User di .env: '$validUser'");
  print("Hash Input  : '$inputHash'");
  print("Hash di .env: '$validHash'");
  print("===================");

  // 4. Pencocokan
  if (inputUser == validUser && inputHash == validHash) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  } else {
    setState(() {
      _errorMessage = 'Username atau password salah!';
    });
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login android1stx6th')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.security, size: 80, color: Colors.blueGrey),
            const SizedBox(height: 20),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            if (_errorMessage.isNotEmpty)
              Text(_errorMessage, style: const TextStyle(color: Colors.red)),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _login,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

// ==========================================
// HALAMAN UTAMA (VIRUSTOTAL API)
// ==========================================
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  
  // PERHATIAN: Masukkan API Key VirusTotal Anda di sini
  final String _apiKey = dotenv.env['VT_API_KEY'] ?? ''; 
  
  bool _isLoading = false;
  Map<String, dynamic>? _scanResult;
  String _errorMessage = '';

  Future<void> _searchVirusTotal() async {
    final query = _searchController.text.trim();
    if (query.isEmpty) return;

    setState(() {
      _isLoading = true;
      _errorMessage = '';
      _scanResult = null;
    });

    // Endpoint API v3 VirusTotal untuk pencarian (IP, Domain, atau Hash)
    final url = Uri.parse('https://www.virustotal.com/api/v3/search?query=$query');

    try {
      final response = await http.get(
        url,
        headers: {
          'x-apikey': _apiKey,
          'Accept': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        setState(() {
          _scanResult = jsonDecode(response.body);
        });
      } else {
        setState(() {
          _errorMessage = 'Gagal mengambil data. Status: ${response.statusCode}';
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Terjadi kesalahan jaringan: $e';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VirusTotal Scanner'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Masukkan IP Address, Domain, atau Hash (MD5/SHA256)',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      hintText: 'Contoh: 8.8.8.8',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _isLoading ? null : _searchVirusTotal,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Icon(Icons.search),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            _isLoading
                ? const CircularProgressIndicator()
                : Expanded(child: _buildResultView()),
          ],
        ),
      ),
    );
  }

  Widget _buildResultView() {
    if (_errorMessage.isNotEmpty) {
      return Text(_errorMessage, style: const TextStyle(color: Colors.red));
    }

    if (_scanResult == null) {
      return const Center(child: Text('Belum ada data pencarian.'));
    }

    final data = _scanResult!['data'] as List;
    if (data.isEmpty) {
      return const Center(child: Text('Tidak ditemukan hasil (Clean / Belum di-scan).'));
    }

    // Mengambil hasil deteksi dari objek pertama yang ditemukan
    final attributes = data[0]['attributes'];
    final stats = attributes['last_analysis_stats'];

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Tipe: ${data[0]['type'].toString().toUpperCase()}', 
                 style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const Divider(),
            const SizedBox(height: 10),
            Text('Malicious: ${stats['malicious']}', 
                 style: const TextStyle(color: Colors.red, fontSize: 16)),
            Text('Suspicious: ${stats['suspicious']}', 
                 style: const TextStyle(color: Colors.orange, fontSize: 16)),
            Text('Undetected: ${stats['undetected']}', 
                 style: const TextStyle(color: Colors.green, fontSize: 16)),
            Text('Harmless: ${stats['harmless']}', 
                 style: const TextStyle(color: Colors.blue, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}