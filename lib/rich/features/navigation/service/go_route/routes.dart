
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../../../domain/screen_factory.dart';
import '../../../home/presentation/HomePage.dart';
import '../../../map/presentation/MapScreen.dart';



final _screenFactory = Get.find<ScreenFactory>();
// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  routes: [
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
          routes: [
            GoRoute(
                path: 'details',
                builder: (context, state) => _screenFactory.makeNewsDetails(state.extra))
          ]
        ),
        GoRoute(
          path: '/promo',
          builder: (context, state) => _screenFactory.makePromo(true),
        ),
        GoRoute(
          path: '/card',
          builder: (context, state) => _screenFactory.makeCard(true),
        ),
        GoRoute(
          path: '/map',
          builder: (context, state) => MapScreen(),
        ),
      ]),
]);
