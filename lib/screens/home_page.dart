import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../widgets/result_card.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _searchController = TextEditingController();
  final _apiService = ApiService();
  
  bool _isLoading = false;
  Map<String, dynamic>? _scanResult;
  String _errorMessage = '';

  void _search() async {
    if (_searchController.text.trim().isEmpty) return;
    setState(() { _isLoading = true; _errorMessage = ''; _scanResult = null; });
    
    try {
      // Memanggil fungsi pencarian di ApiService
      final result = await _apiService.search(_searchController.text);
      setState(() => _scanResult = result);
    } catch (e) {
      // JIKA TOKEN KEDALUWARSA (DITOLAK SERVER)
      if (e.toString().contains('UNAUTHORIZED')) {
        
        // 1. Coba perbarui token secara diam-diam di latar belakang
        final refreshSuccess = await _apiService.authService.refreshToken();
        
        if (refreshSuccess) {
          // 2a. Jika BERHASIL, langsung ulangi pencarian tanpa sepengetahuan user!
          _search(); 
          return; // Hentikan eksekusi yang gagal ini
        } else {
          // 2b. Jika GAGAL (Sesi 1 hari sudah habis / token diblacklist server)
          await _apiService.authService.logout(); 
          
          if (!mounted) return;
          // Tendang pengguna ke halaman login
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
            (route) => false,
          );
          
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Sesi Anda telah benar-benar berakhir. Silakan login kembali.')),
          );
        }
      } else {
        // Jika errornya bukan masalah token (misal: internet putus)
        setState(() => _errorMessage = 'Error: $e');
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
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
      onPressed: () async {
        // 1. Tampilkan indikator loading (opsional) atau langsung panggil fungsi logout
        // Ini akan mengirimkan POST /auth/logout ke server Python Anda
        await _apiService.authService.logout();

        if (!context.mounted) return;

        // 2. Setelah token dihancurkan di server dan lokal, pindah ke halaman login
        Navigator.pushReplacement(
          context, 
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      },
    )
  ],
),      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: TextField(controller: _searchController, decoration: const InputDecoration(hintText: 'Contoh: 8.8.8.8'))),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: _isLoading ? null : _search, child: const Icon(Icons.search)),
              ],
            ),
            const SizedBox(height: 20),
            _isLoading ? const CircularProgressIndicator() : Expanded(
              child: _errorMessage.isNotEmpty 
                  ? Text(_errorMessage, style: const TextStyle(color: Colors.red))
                  : _scanResult != null ? ResultCard(scanResult: _scanResult!) : const Text('Belum ada pencarian.')
            ),
          ],
        ),
      ),
    );
  }
}
