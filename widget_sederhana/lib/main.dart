
import 'package:flutter/material.dart';
import 'pages/widget_bertingkat.dart';
import 'pages/halaman_login.dart';

void main() {
  runApp(const WidgetSederhanaApp());
}

class WidgetSederhanaApp extends StatelessWidget {
  const WidgetSederhanaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget Sederhana',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ),
        useMaterial3: true,
      ),
      home: const MenuUtama(),
    );
  }
}

class MenuUtama extends StatelessWidget {
  const MenuUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Widget Flutter'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Daftar Latihan',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          Card(
            child: ListTile(
              leading: const Icon(
                Icons.image,
                color: Colors.green,
              ),
              title: const Text('Widget Bertingkat'),
              subtitle: const Text(
                'Gambar dan teks Jembatan Merah Putih',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const WidgetBertingkatPage(),
                  ),
                );
              },
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(
                Icons.login,
                color: Colors.blue,
              ),
              title: const Text('Login Sederhana'),
              subtitle: const Text(
                'Latihan TextField dan tombol',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HalamanLogin(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
