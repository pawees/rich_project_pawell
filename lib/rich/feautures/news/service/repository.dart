import 'dart:async';
import '../domain/entities/news.dart';
import '../domain/i_news_repository.dart';

class NewsRepo implements INewsRepository {

  @override
  Future<void> getNews(params) async {
    _generateNews() {
      News(id: 1, title: 'HomeRepo', text: 'Hello,world');
    }

    final news = List.generate(30, (index) => _generateNews());
  }

  @override
  Future<void> updateNews(params) {
    // TODO: implement updateNews
    throw UnimplementedError();
  }
}