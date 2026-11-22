import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

/// Provider model untuk contoh penggunaan state management
class CounterModel extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }
}

/// Halaman evaluasi implementasi package:
/// 1. provider (Modul 7.B & 9.a)
/// 2. table_calendar (Modul 9.a)
/// 3. fluttertoast (Modul C. Evaluasi)
class EvaluasiPackagesApp extends StatelessWidget {
  const EvaluasiPackagesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterModel(),
      child: MaterialApp(
        title: 'Demo Evaluasi Package Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const EvaluasiPackagesPage(),
      ),
    );
  }
}

class EvaluasiPackagesPage extends StatefulWidget {
  const EvaluasiPackagesPage({super.key});

  @override
  State<EvaluasiPackagesPage> createState() => _EvaluasiPackagesPageState();
}

class _EvaluasiPackagesPageState extends State<EvaluasiPackagesPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  void _showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.blue[800],
      textColor: Colors.white,
      fontSize: 14.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Evaluasi Package Flutter'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Card Demo Fluttertoast
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '1. Evaluasi Fluttertoast (^8.0.7+)',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Menampilkan notifikasi toast menggunakan library fluttertoast.',
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton.icon(
                      onPressed: () {
                        _showToast('Halo dari Fluttertoast (Job VI)!');
                      },
                      icon: const Icon(Icons.notifications),
                      label: const Text('Tampilkan Toast'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Card Demo Provider
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '2. Package Provider (^4.0.1 / ^6.x)',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Nilai Counter dari Provider: ${counterModel.counter}',
                      style: const TextStyle(fontSize: 15),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton.icon(
                      onPressed: () {
                        counterModel.increment();
                        _showToast('Counter bertambah: ${counterModel.counter}');
                      },
                      icon: const Icon(Icons.add),
                      label: const Text('Tambah Nilai (Provider)'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Card Demo TableCalendar
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '3. Data Pengujian: TableCalendar (^3.0.1+)',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TableCalendar(
                      firstDay: DateTime.utc(2020, 1, 1),
                      lastDay: DateTime.utc(2030, 12, 31),
                      focusedDay: _focusedDay,
                      calendarFormat: _calendarFormat,
                      selectedDayPredicate: (day) {
                        return isSameDay(_selectedDay, day);
                      },
                      onDaySelected: (selectedDay, focusedDay) {
                        setState(() {
                          _selectedDay = selectedDay;
                          _focusedDay = focusedDay;
                        });
                        _showToast(
                          'Tanggal dipilih: ${selectedDay.day}/${selectedDay.month}/${selectedDay.year}',
                        );
                      },
                      onFormatChanged: (format) {
                        setState(() {
                          _calendarFormat = format;
                        });
                      },
                      onPageChanged: (focusedDay) {
                        _focusedDay = focusedDay;
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
