// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:rich_project_pawell/rich/features/navigation_bar/presentation/navigation_bar_screen.dart';
import 'package:rich_project_pawell/rich/features/news/data/api/news_api_mock.dart';
import 'package:rich_project_pawell/rich/features/news/domain/entities/news.dart';
import 'package:rich_project_pawell/rich/features/news/domain/i_news_repository.dart';
import 'package:rich_project_pawell/rich/features/news/presentation/news_screen.dart';
import 'package:rich_project_pawell/rich/features/promo/presentation/promo_screen.dart';

import '../../test_screens/screens/main_test_screen.dart';

void main() {
  testGoldens(
    'My home page',
    (tester) async {
      // Builds the given scenario within a device wrapper
      final builder = DeviceBuilder()
        ..addScenario(
          name: 'Initial Page',
          widget: BottomNavigation(),
        );

      await tester.pumpDeviceBuilder(
        builder,
        wrapper: materialAppWrapper(
          theme: ThemeData(primaryColor: Colors.red),
        ),
      );

      await screenMatchesGolden(tester, 'my_home_page');
    },
  );

  testGoldens('PromoScreen', (tester) async {
    // final _news_service = NewsApiMock();
    // final container_news = await _news_service.getNewsForTest();

    await tester.pumpWidgetBuilder(PromoScreen());
    await tester.pumpAndSettle();
    // final dynamicColor = ValueNotifier<Color>(Colors.red);
    // await tester.pumpWidgetBuilder(
    //   ValueListenableBuilder<Color>(
    //     valueListenable: dynamicColor,
    //     builder: (ctx, color, _) => AnimatedContainer(
    //         color: color, duration: const Duration(seconds: 1)),
    //   ),
    //   surfaceSize: const Size(60, 60),
    // );

    //dynamicColor.value = Colors.green;

    await screenMatchesGolden(
      tester,
      'news_screen',
    );
  });
}
