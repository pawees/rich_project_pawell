import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_project_pawell/rich/feautures/navigation/domain/i_main_navigation.dart';
import '../../../domain/screen_factory.dart';
import '../domain/entity/main_navigation_route_names.dart';



class MainNavigation implements IMainNavigation{

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