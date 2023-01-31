import 'dart:async';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../domain/entities/news.dart';
import '../../domain/i_news_api.dart';
import '../../domain/i_news_repository.dart';

class NewsRepo implements INewsRepository {

  static final _newsApiClient = Get.find<INewsApi>();

  @override
  Future getNews() async {
    return _newsApiClient.getNews();
  }

  @override
  Future<void> updateNews(params) {
    // TODO: implement updateNews
    throw UnimplementedError();
  }

}