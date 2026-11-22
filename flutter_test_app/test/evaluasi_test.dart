import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_app/evaluasi_packages.dart';

void main() {
  testWidgets('Memverifikasi halaman evaluasi packages merender dengan baik',
      (WidgetTester tester) async {
    await tester.pumpWidget(const EvaluasiPackagesApp());

    // Verifikasi AppBar Evaluasi Package Flutter muncul
    expect(find.text('Evaluasi Package Flutter'), findsOneWidget);

    // Verifikasi card fluttertoast muncul
    expect(find.textContaining('Evaluasi Fluttertoast'), findsOneWidget);

    // Verifikasi card provider muncul
    expect(find.textContaining('Package Provider'), findsOneWidget);

    // Verifikasi card table_calendar muncul
    expect(find.textContaining('TableCalendar'), findsOneWidget);
  });
}
