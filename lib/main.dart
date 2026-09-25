import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

// Memanggil file login dari dalam folder screens
import 'screens/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
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
        brightness: Brightness.dark,
      ),
      // Arahkan home ke LoginPage yang sudah di-import dari file terpisah
      home: const LoginPage(),
    );
  }
}
