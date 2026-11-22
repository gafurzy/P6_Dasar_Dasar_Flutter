# Laporan Praktikum Job VI: Dasar-Dasar Flutter

**Identitas Praktikum:**
- **Perguruan Tinggi:** Politeknik Negeri Bengkalis
- **Jurusan / Prodi:** Teknik Informatika / D4 Rekayasa Perangkat Lunak
- **Mata Kuliah:** Pemrograman Mobile Multiplatform (RPL16607)
- **Pertemuan ke:** 8 | **Job ke:** 6
- **Mulai Berlaku:** 2021

---

## 1. Tujuan Praktikum
1. Mahasiswa mampu memahami dasar-dasar pengembangan aplikasi mobile berbasis Flutter.
2. Mahasiswa mampu mengenal struktur project starter aplikasi mobile menggunakan Flutter framework.
3. Mahasiswa mampu mengimplementasikan package/library berbasis Flutter framework.
4. Mahasiswa mampu memahami gaya penulisan kode program menggunakan Flutter.

---

## 2. Struktur Project
Struktur folder starter project Flutter (`flutter_test_app`) yang dibuat di dalam direktori `P06_PENGENALAN_FLUTTER`:
- `.dart_tool/` : Berisi file konfigurasi dan hasil kompilasi Dart.
- `.idea/` : Konfigurasi untuk IDE Android Studio / IntelliJ.
- `android/` : Source code dan konfigurasi native Android (Gradle, AndroidManifest.xml, dsb).
- `ios/` : Source code dan konfigurasi native iOS (Xcode workspace, Podfile, Info.plist).
- `lib/` : Folder utama tempat kode sumber aplikasi Flutter berada (`main.dart`).
- `test/` : Folder penyimpanan source code automated testing / widget testing.
- `.gitignore` : Daftar file dan folder yang diabaikan oleh Git.
- `pubspec.yaml` : File konfigurasi metadata project, dependensi library, font, dan asset.
- `pubspec.lock` : Mengunci versi spesifik dependensi yang sedang terpasang.

---

## 3. Implementasi Kode Program

### A. File `lib/main.dart` (Struktur Kode Dasar)
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TI-RPL'),
        ),
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
```

### B. File `pubspec.yaml` (Konfigurasi & Dependensi)
```yaml
name: flutter_test_app
description: "Ini starter project flutter"
publish_to: 'none'

version: 1.0.0+1

environment:
  sdk: ^3.13.7

dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^1.0.8
  provider: ^6.1.2
  table_calendar: ^3.1.2
  fluttertoast: ^8.2.8

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^6.0.0

flutter:
  uses-material-design: true
```

---

## 4. Analisa dan Pembahasan
1. **Fungsi `main()` dan `runApp()`**:
   - `main()` bertindak sebagai titik masuk eksekusi kode program Dart.
   - `runApp()` menerima widget root (`MyApp`) dan menampilkannya ke layar dengan merender hirarki widget Material Design.
2. **StatelessWidget & Override `build()`**:
   - `MyApp` merupakan turunan dari `StatelessWidget` yang tidak memiliki status (*state*) yang dapat berubah secara dinamis pada runtime.
   - Method `build()` mengembalikan widget pohon (`Widget Tree`) yang mendefinisikan tampilan antarmuka.
3. **Scaffold, AppBar, dan Center**:
   - `Scaffold` menyediakan layout visual dasar Material Design yang mencakup slot `appBar` (header) dan `body` (konten utama).
   - `AppBar` diisi widget `Text('TI-RPL')`.
   - `Center` membungkus widget teks `'Competence for competition!'` agar posisinya berada tepat di tengah layar.
4. **Trailing Commas (Penyeretan Koma)**:
   - Penambahan koma pada akhir setiap daftar argumen/parameter memudahkan formatter otomatis VS Code untuk memecah baris kode sehingga menjadi rapi dan mudah dibaca.
5. **Manajemen Dependensi melalui Dart Pub**:
   - Dart pub mengelola package dari repositori pub.dev.
   - Penambahan `provider`, `table_calendar`, dan `fluttertoast` dilakukan dengan mendaftarkannya pada blok `dependencies:` dengan indentasi tepat 2 spasi.
   - Perintah `flutter pub get` bertugas mengunduh serta menghubungkan package tersebut ke dalam project.

---

## 5. Jawaban Evaluasi Modul
1. **Install library `fluttertoast`**: Library telah ditambahkan ke dalam `pubspec.yaml`.
2. **Versi `fluttertoast` $\ge$ 8.0.7**: Versi yang dipasang adalah `^8.2.8` (yang memenuhi kriteria $\ge$ 8.0.7 dan kompatibel penuh dengan Dart 3 / Flutter terbaru).
3. **Sinkronisasi**: Perintah `flutter pub get` telah dijalankan dengan sukses (status exit code 0). Implementasi fungsional dan pengujian widget telah dibuat dan diuji melalui `flutter test` (semua pengujian lolos 100%).

---

## 6. Kesimpulan
1. Project Flutter memiliki struktur direktori modular yang memisahkan kode platform-native (`android/`, `ios/`), kode aplikasi lintas platform (`lib/`), dan pengujian (`test/`).
2. Kode aplikasi Flutter tersusun dari hierarki widget (Widget Tree) yang deklaratif dan reaktif.
3. Penambahan pustaka pihak ketiga sangat mudah dan terstandarisasi melalui file konfigurasi `pubspec.yaml` dan package manager `pub`.
