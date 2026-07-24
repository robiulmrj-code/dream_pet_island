import 'package:dream_pet_island/core/app/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('App boots without throwing', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
  });
}
