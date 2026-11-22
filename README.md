# Job VI: Dasar-Dasar Flutter
**Mata Kuliah:** Pemrograman Mobile Multiplatform (RPL16607)  
**Program Studi:** D4 Rekayasa Perangkat Lunak (D4-RPL), Teknik Informatika, Politeknik Negeri Bengkalis  
**Pertemuan:** 8 | **Job ke:** 6  

---

## 📁 Struktur Direktori Project

Sesuai dengan **Gambar 6.1, 6.5, dan 6.8** pada modul praktikum:

```text
P06_PENGENALAN_FLUTTER/
└── flutter_test_app/
    ├── .dart_tool/
    ├── .idea/
    ├── android/
    ├── ios/
    ├── lib/
    │   ├── main.dart               <-- Prosedur 7.A (AppBar TI-RPL & Competence for competition!)
    │   └── evaluasi_packages.dart  <-- Demonstrasi Provider, TableCalendar & Fluttertoast
    ├── test/
    │   ├── widget_test.dart        <-- Pengujian unit widget untuk main.dart
    │   └── evaluasi_test.dart      <-- Pengujian unit widget untuk evaluasi_packages.dart
    ├── web/
    ├── windows/
    ├── .gitignore
    ├── .metadata
    ├── flutter_test_app.iml
    ├── pubspec.yaml                <-- Konfigurasi paket & dependensi
    ├── pubspec.lock
    └── README.md
```

---

## 🛠️ Ringkasan Pengerjaan Modul

### 1. Prosedur Kerja A: Memahami Struktur Kode Dasar (`lib/main.dart`)
- **Tujuan:** Membuat aplikasi dasar Flutter dengan komponen `MaterialApp`, `ThemeData`, `Scaffold`, `AppBar`, dan `Center`.
- **Title AppBar:** `TI-RPL`
- **Body:** `Competence for competition!` (dengan `TextDirection.ltr`)
- **Format:** Mengikuti standar Flutter dengan *trailing commas* untuk kemudahan auto-formatting.

### 2. Prosedur Kerja B & Data Pengujian: Konfigurasi Dependensi (`pubspec.yaml`)
- **Description:** `"Ini starter project flutter"` (sesuai poin 9.b Data Pengujian).
- **Dependensi yang ditambahkan:**
  - `provider: ^6.1.2` (Prosedur 7.B & 9.a)
  - `table_calendar: ^3.1.2` (Data Pengujian 9.a)
  - `fluttertoast: ^8.2.8` (Evaluasi C poin 1 & 2, versi $\ge$ 8.0.7)

### 3. Evaluasi Praktikum (`C. Evaluasi`)
- Dependensi `fluttertoast` berhasil ditambahkan dengan versi $\ge$ 8.0.7.
- Telah disinkronisasi melalui perintah `flutter pub get`.
- Implementasi fungsional dari seluruh library (`fluttertoast`, `provider`, `table_calendar`) disediakan pada file [evaluasi_packages.dart](file:///d:/isna/Pemrograman%20MultiPlatform/P06_PENGENALAN_FLUTTER/flutter_test_app/lib/evaluasi_packages.dart).

---

## 🚀 Cara Menjalankan

Masuk ke direktori project:
```powershell
cd "d:\isna\Pemrograman MultiPlatform\P06_PENGENALAN_FLUTTER\flutter_test_app"
```

1. **Menjalankan Aplikasi Utama (Prosedur 7.A):**
   ```powershell
   flutter run
   ```

2. **Menjalankan Demo Evaluasi Packages:**
   ```powershell
   flutter run -t lib/evaluasi_packages.dart
   ```

3. **Menjalankan Pengujian Otomatis (Tests):**
   ```powershell
   flutter test
   ```
