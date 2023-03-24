import 'package:flutter/widgets.dart';

abstract class HomeTestKeys {
  /// скролл на экране списка
  static const Key scroll = Key('main_list_scroll');

  /// кнопка открытия избранного
  static const Key favoritesBtn = Key('main_favorites_btn');


  static const Key appBar = Key('app_bar');
  static const Key appBarIcon = Key('app_bar_icon');

  /// кнопка открытия новостей
  static const Key newsBtn = Key('news_btn');
}

abstract class FavoritesTestKeys {
  /// кнопка удаления товара из избранного по индексу
  static Key removeItem(int index) => Key('remove_icon_$index');
}
