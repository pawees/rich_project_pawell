import 'dart:async';
import '../domain/entities/news.dart';
import '../domain/i_news_repository.dart';

class MockNewsRepo implements INewsRepository {

  @override
  Future getNews() async {
    _generateNews() {
     return News(id: 1, title: 'Hi', text: 'Hello,world');
    }
    final news = List<News>.generate(20, (int index) => _generateNews());
    return news;

  }

  @override
  Future<void> updateNews(params) {
    // TODO: implement updateNews
    throw UnimplementedError();
  }
}