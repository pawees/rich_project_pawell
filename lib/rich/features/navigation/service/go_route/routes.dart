import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:rich_project_pawell/rich/features/card/presentation/card_screen.dart';
import 'package:rich_project_pawell/rich/features/promo/presentation/promo_screen.dart';

import '../../../../domain/screen_factory.dart';
import '../../../home/presentation/HomePage.dart';
import '../../../navigation_bar/presentation/navigation_bar_screen.dart';
import '../../../news/domain/entities/news.dart';
import '../../../news/presentation/news_screen.dart';

final _screenFactory = Get.find<ScreenFactory>();
// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  routes: [
  ShellRoute(
      builder: (context, state, child) {
        return HomePage(child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => _screenFactory.makeAuth(),
        ),
        GoRoute(
          path: '/news',
          builder: (context, state) => _screenFactory.makeNews(),
        ),
        GoRoute(
          path: '/promo',
          builder: (context, state) => _screenFactory.makePromo(true),
        ),
        GoRoute(
          path: '/card',
          builder: (context, state) => _screenFactory.makeCard(true),
        ),
      ]),
]);
