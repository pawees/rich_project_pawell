import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:rich_project_pawell/main.dart' as app;

import '../test_screens/screens/main_test_screen.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('tap on the floating action button, verify counter',
            (tester) async {
          app.main();
          await tester.pumpAndSettle();

          //await tester.pumpUntilVisible(MainTestScreen.appbar);

          // Verify the counter starts at 0.
          expect(find.text('Новости'), findsOneWidget);

          // Finds the floating action button to tap on.
          final Finder fab = MainTestScreen.appbar;

          // Emulate a tap on the floating action button.
          await tester.tap(fab);

          // Trigger a frame.
          await tester.pumpAndSettle();

          // Verify the counter increments by 1.
          expect(find.text('Хуёвость'), findsOneWidget);
        });
  });
}