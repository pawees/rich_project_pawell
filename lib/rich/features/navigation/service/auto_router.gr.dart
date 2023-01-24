// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../news/domain/entities/news.dart' as _i5;
import '../../news/presentation/news_screen.dart' as _i1;
import '../../promo/presentation/promo_screen.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    NewsScreen.name: (routeData) {
      final args = routeData.argsAs<NewsScreenArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.NewsScreen(
          args.news,
          key: args.key,
        ),
      );
    },
    PromoScreen.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.PromoScreen(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          NewsScreen.name,
          path: '/',
        ),
        _i3.RouteConfig(
          PromoScreen.name,
          path: '/promo-screen',
        ),
      ];
}

/// generated route for
/// [_i1.NewsScreen]
class NewsScreen extends _i3.PageRouteInfo<NewsScreenArgs> {
  NewsScreen({
    required List<_i5.News> news,
    _i4.Key? key,
  }) : super(
          NewsScreen.name,
          path: '/',
          args: NewsScreenArgs(
            news: news,
            key: key,
          ),
        );

  static const String name = 'NewsScreen';
}

class NewsScreenArgs {
  const NewsScreenArgs({
    required this.news,
    this.key,
  });

  final List<_i5.News> news;

  final _i4.Key? key;

  @override
  String toString() {
    return 'NewsScreenArgs{news: $news, key: $key}';
  }
}

/// generated route for
/// [_i2.PromoScreen]
class PromoScreen extends _i3.PageRouteInfo<void> {
  const PromoScreen()
      : super(
          PromoScreen.name,
          path: '/promo-screen',
        );

  static const String name = 'PromoScreen';
}
