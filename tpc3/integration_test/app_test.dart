import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:tpc3/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('Counter resets test', (tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Tap the '+' icon to increment to 1.
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();

      // Check that it incremented successfully.
      expect(find.text('1'), findsOneWidget);

      // Tap the 'Reset' button.
      await tester.tap(find.text('Reset'));
      await tester.pumpAndSettle();

      // Verify that our counter has returned to 0.
      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);
    });
  });
}
