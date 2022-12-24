import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../domain/screen_factory.dart';

abstract class MainNavigationRouteNames {
  static const loaderWidget = '/';
  static const auth = '/auth';
  static const home = '/home';
  // static const mainScreen = '/main_screen';
  // static const movieDetails = '/main_screen/movie_details';
  // static const movieTrailerWidget = '/main_screen/movie_details/trailer';
}

class MainNavigation {
 static final _screenFactory = Get.find<ScreenFactory>();


  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.loaderWidget: (_) => _screenFactory.makeLoader(),
    MainNavigationRouteNames.auth: (_) => _screenFactory.makeAuth(),
    MainNavigationRouteNames.home: (_) => _screenFactory.makeHome(),
  };
  // Route<Object> onGenerateRoute(RouteSettings settings) {
  //   switch (settings.name) {
  //     case MainNavigationRouteNames.movieDetails:
  //       final arguments = settings.arguments;
  //       final movieId = arguments is int ? arguments : 0;
  //       return MaterialPageRoute(
  //         builder: (_) => _screenFactory.makeMovieDetails(movieId),
  //       );
  //     case MainNavigationRouteNames.movieTrailerWidget:
  //       final arguments = settings.arguments;
  //       final youtubeKey = arguments is String ? arguments : '';
  //       return MaterialPageRoute(
  //         builder: (_) => _screenFactory.makeMovieTrailer(youtubeKey),
  //       );
  //     default:
  //       const widget = Text('Navigation error!!!');
  //       return MaterialPageRoute(builder: (_) => widget);
  //   }
  // }
}
