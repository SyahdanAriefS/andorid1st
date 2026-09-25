import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  final Map<String, dynamic> scanResult;
  const ResultCard({super.key, required this.scanResult});

  @override
  Widget build(BuildContext context) {
    final data = scanResult['data'] as List;
    if (data.isEmpty) return const Center(child: Text('Tidak ditemukan hasil.'));

    final stats = data[0]['attributes']['last_analysis_stats'];
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
            Text('Malicious: ${stats['malicious']}', style: const TextStyle(color: Colors.red)),
            Text('Suspicious: ${stats['suspicious']}', style: const TextStyle(color: Colors.orange)),
            Text('Undetected: ${stats['undetected']}', style: const TextStyle(color: Colors.green)),
            Text('Harmless: ${stats['harmless']}', style: const TextStyle(color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}
