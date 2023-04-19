import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:rich_project_pawell/main.dart';
import 'package:rich_project_pawell/rich/domain/di_container.dart';
import 'package:rich_project_pawell/rich/features/news/domain/entities/news.dart';
import 'package:rich_project_pawell/rich/features/news/presentation/news_screen.dart';

import '../test_screens/general_test_utils.dart';
import '../test_screens/screens/main_test_screen.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() {//fixture
    // код который выполняется перед всеми тестами
  });

  setUp(() {//fixture
    // код который выполняется перед каждым тестом
  });

  group('Бар навигации', () {
    testWidgets('Новости', (WidgetTester tester) async {
      // Create the widget by telling the tester to build it.
      //await tester.pumpWidget(NewsScreen([News(title: 'title', text: 'text', id: 1, imageUrl: 'imageUrl')],));

      await tester.pumpAndSettle();
      //await tester.implicitTap(MainTestScreen.openNewsScreen);
      await tester.pumpUntilVisible(MainTestScreen.appbar);

      final actual = tester.widget<AppBar>(MainTestScreen.appbar).title as Text;
      expect(actual.data, 'Новости');
    });
  });

}
