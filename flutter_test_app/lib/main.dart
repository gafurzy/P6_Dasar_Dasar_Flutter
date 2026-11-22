import 'package:flutter/material.dart';

// Baris 3: Titik awal eksekusi program
void main() {
  // Baris 4: Menjalankan dan menampilkan UI ke layar
  runApp(const MyApp());
}

// Baris 7: Kelas MyApp turunan dari StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Baris 9: Override method build() untuk merender tampilan UI
  @override
  Widget build(BuildContext context) {
    // Baris 10: Mengembalikan MaterialApp (Material Design)
    return MaterialApp(
      title: 'Flutter ',
      theme: ThemeData(
        useMaterial3: false, // Menggunakan gaya Material 2 (agar AppBar berwarna biru seperti di modul)
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // Baris 15: Scaffold sebagai struktur dasar halaman (appBar dan body)
      home: Scaffold(
        // Baris 16: AppBar sebagai judul halaman
        appBar: AppBar(
          title: const Text('TI-RPL'),
          backgroundColor: Colors.blue, // Memastikan warna AppBar tetap biru
          foregroundColor: Colors.white, // Warna teks putih
        ),
        // Body halaman di tengah layar
        body: const Center(
          child: Text(
            'Competence for competition!',
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
