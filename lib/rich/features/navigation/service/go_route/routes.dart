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

// GoRouter configuration
final router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => _screenFactory.makeAuth(),
  ),
  ShellRoute(
      builder: (context, state, child) {
        return HomePage(child: child);
      },
      routes: [
        GoRoute(
          path: '/news',
          builder: (context, state) => _screenFactory.makeNews(),
        ),
        GoRoute(
          path: '/promo',
          builder: (context, state) => _screenFactory.makePromo(true),
        ),
        GoRoute(
            path: '/open_news',
            builder: (context, state) => _screenFactory.openNews(),
            routes: [
              GoRoute(
                path: 'details',
                builder: (context, state) =>
                    _screenFactory.makeNewsDetails(state.extra),
              )
            ]),
        GoRoute(
          path: '/card',
          builder: (context, state) => _screenFactory.makeCard(true),
        ),
        GoRoute(
          path: '/map',
          builder: (context, state) => _screenFactory.makeMap(),
        ),
      ]),
]);
