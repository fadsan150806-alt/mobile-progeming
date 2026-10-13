
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_sederhana/main.dart';

void main() {
  testWidgets('Menu utama tampil dengan benar', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const WidgetSederhanaApp());

    expect(find.text('Latihan Widget Flutter'), findsOneWidget);
    expect(find.text('Widget Bertingkat'), findsOneWidget);
    expect(find.text('Login Sederhana'), findsOneWidget);
  });
}
