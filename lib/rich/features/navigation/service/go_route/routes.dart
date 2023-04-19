import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../../../domain/screen_factory.dart';
import '../../../home/presentation/HomePage.dart';

import 'package:flutter/material.dart';

final _screenFactory = Get.find<ScreenFactory>();

abstract class AppPath {
  static const init = '/';
  static const auth = '/auth';
  static const home = '/home';
  static const profile = '/profile';
  static const news = '/news';
  static const details = 'details';
  static const promo = '/promo';
  static const map = '/map';
  static const theme = 'theme';
  static const card = '/card';
}

abstract class ExceptionPath {
  ///in this case bottomNavBar is not rendered
  static List<String> exceptions = [
    '/card/theme',
    '/news/theme',
    '/news/details'
  ];
}

// GoRouter configuration
class AppRouter {
  GoRouter router = GoRouter(initialLocation: AppPath.init, routes: [
    GoRoute(
      path: AppPath.init,
      builder: (context, state) => _screenFactory.makeAuth(),
    ),
    ShellRoute(
        builder: (context, state, child) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: Wrapper(
                state: state.location,
                child: child,
              ));
        },
        routes: [
          GoRoute(
              path: AppPath.news,
              builder: (context, state) => _screenFactory.makeNews(), //
              routes: [
                GoRoute(
                  path: AppPath.details,
                  builder: (context, state) =>
                      _screenFactory.makeNewsDetails(state.extra),
                ),
                GoRoute(
                  path: AppPath.theme,
                  builder: (context, state) => Scaffold(
                      body: Center(
                          child: Text(
                    'HeLLo\nHELLO\n\nhiii',
                    style: TextStyle(color: Color(0xFF7b60c4), fontSize: 18),
                  ))),
                ),
              ]),
          GoRoute(
            path: AppPath.promo,
            builder: (context, state) => _screenFactory.makePromo(true),
          ),
          GoRoute(
              path: AppPath.card,
              builder: (context, state) => _screenFactory.makeCard(true),
              routes: [
                GoRoute(
                  path: AppPath.theme,
                  builder: (context, state) => Scaffold(
                      body: Center(
                          child: Text(
                    'HeLLo\nHELLO\n\nhiii',
                    style: TextStyle(color: Color(0xFF7b60c4), fontSize: 18),
                  ))),
                ),
              ]),
          GoRoute(
            path: AppPath.map,
            builder: (context, state) => _screenFactory.makeMap(),
          ),
        ]),
  ]);
}

class Wrapper extends StatelessWidget {
  const Wrapper({required this.state, required this.child, Key? key})
      : super(key: key);
  final String? state;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (ExceptionPath.exceptions.contains(state)) {
      return HomePage(child: child, bottomNavigation: false);
    } else {
      return HomePage(child: child, bottomNavigation: true);
    }
  }
}
