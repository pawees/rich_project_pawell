import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:meta/meta.dart';
import '../../data/repository/news_mock_repository.dart';
import '../../domain/entities/news.dart';
import '../../domain/i_news_repository.dart';

part 'news_event.dart';

part 'news_state.dart';


class NewsListContainer {
  final List<News> news;

  NewsListContainer({required this.news});

  const NewsListContainer.initial() : news = const <News>[];

  static NewsListContainer copyWith({
    List<News>? news,
  }) {
    return NewsListContainer(news: news ?? []);
  }
}


class NewsBloc extends Bloc<NewsEvent, NewsScreenState> {

  static final _news_service = Get.find<INewsRepository>();

  NewsBloc( NewsScreenState initialState) : super(initialState) {
    on<NewsEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<InitNews>((event, emit) => _initNews(emit));
  }

  Future<void> _initNews(Emitter<NewsScreenState> emit) async {

    final container_news = NewsListContainer.copyWith(news: await _news_service.getNews());

    emit(state.copyWith(newsContainer: container_news));
  }


}
