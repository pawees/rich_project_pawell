import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rich_project_pawell/rich/core/test_keys.dart';


abstract class MainTestScreen {
  /// снекбар
  static Finder snackbar = find.byType(SnackBar);

  /// аппбар
  static Finder appbar = find.byKey(HomeTestKeys.appBar);

  ///naviigation promo btn
  static Finder promoBtn = find.byKey(HomeTestKeys.promoBtn);

  /// скролл на экране списка
  static Finder scroll = find.byKey(HomeTestKeys.scroll);

  /// кнопки добавление/удаления в избранное
  static Finder favoriteToggleBtn = find.byType(IconButton);

  static Finder openNewsScreen = find.byKey(HomeTestKeys.newsBtn);
  // static Finder openNewsScreen = find
  //     .byWidgetPredicate((w) => w is IconButton && (w.icon as Icon).icon == Icons.favorite_border);
  static Finder removeFromFavorites =
  find.byWidgetPredicate((w) => w is IconButton && (w.icon as Icon).icon == Icons.favorite);

  /// кнопка перехода в избранное
  static Finder favoritesBtn = find.byKey(HomeTestKeys.favoritesBtn);
}
