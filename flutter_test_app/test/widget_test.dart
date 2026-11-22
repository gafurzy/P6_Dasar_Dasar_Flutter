import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_app/main.dart';

void main() {
  testWidgets('Memverifikasi judul TI-RPL dan teks Competence for competition!',
      (WidgetTester tester) async {
    // Bangun aplikasi dan jalankan frame
    await tester.pumpWidget(const MyApp());

    // Verifikasi teks AppBar 'TI-RPL' muncul
    expect(find.text('TI-RPL'), findsOneWidget);

    // Verifikasi teks body 'Competence for competition!' muncul
    expect(find.text('Competence for competition!'), findsOneWidget);
  });
}
