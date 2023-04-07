import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../../../domain/screen_factory.dart';
import '../../../home/presentation/HomePage.dart';

import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  final Widget child;

  const MyStatefulWidget({super.key, required this.child});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 1400),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.slowMiddle,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: widget.child,
    );
  }
}

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
  static const fromCardTheme = '/card/theme';
  static const fromNewsTheme = '/news/theme';
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
          return Wrapper(
            state: state.location,
            child: child,
          );
        },
        routes: [
          GoRoute(
              path: AppPath.news,
              builder: (context, state) => const MakeNewsViewFactory(),
              routes: [
                GoRoute(
                  path: AppPath.details,
                  builder: (context, state) =>
                      _screenFactory.makeNewsDetails(state.extra),
                ),
                GoRoute(
                  path: AppPath.theme,
                  builder: (context, state) => Center(child:Text('HeLLo',style: TextStyle(color: Color(0xFF7b60c4)),)),
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
                  builder: (context, state) => Text('123'),
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
    switch (state) {
      case ExceptionPath.fromCardTheme:
        return HomePage(child: child, bottomNavigation: false);
      case ExceptionPath.fromNewsTheme:
        return HomePage(child: child, bottomNavigation: false);
      default:
        return HomePage(child: child, bottomNavigation: true);
    }
  }
}
