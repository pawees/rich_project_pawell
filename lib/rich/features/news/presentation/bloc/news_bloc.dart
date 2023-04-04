import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:meta/meta.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

import '../../domain/entities/news.dart';
import '../../domain/i_news_repository.dart';
import 'dart:math';


part 'news_event.dart';

part 'news_state.dart';



class NewsListContainer {
  final List<News> news;
  final int currentPage;
  static List<NewsListContainer> __cacheContainers = [];

  NewsListContainer({required this.currentPage, required this.news});

  const NewsListContainer.initial()
      : news = const <News>[],
        currentPage = 0;


  NewsListContainer copyWith({
    List<News>? news,
    int? currentPage,
  }) {
    return NewsListContainer(news: news ?? [],currentPage: currentPage ?? this.currentPage);
  }

  factory NewsListContainer.cache() {
      return __cacheContainers[0];
  }

  factory NewsListContainer.newContainer(
      List<News>? news,
      int? currentPage,) {
    var new_container = NewsListContainer(news: news ?? [],currentPage: currentPage ?? 0);
    __cacheContainers.add(new_container);
    return new_container;

  }

}


class NewsBloc extends Bloc<NewsEvent, NewsScreenState> {

  static final _news_service = Get.find<INewsRepository>();

  NewsBloc( NewsScreenState initialState) : super(initialState) {
    on<NewsEvent>((event, emit) async {
      if (event is InitNews) _initNews(event,emit);
      if (event is OpenNews) _openNews(event,emit);
      if (event is DetailsNews) _detailsNews(event,emit);

      // TODO: implement event handler
    }, transformer: restartable() );

  }

  Future<void> _initNews(InitNews event, Emitter<NewsScreenState> emit) async {
    final containerNews = NewsListContainer.newContainer(await _news_service.getNews(),1);
    final newState = state.copyWith(newsContainer: containerNews);
    emit(newState);
  }

  Future<void> _openNews(OpenNews event, Emitter<NewsScreenState> emit) async {
    final containerNews = NewsListContainer.cache();
    final newState = state.copyWith(newsContainer: containerNews);
    emit(newState);
  }

  Future<void> _detailsNews(DetailsNews event, Emitter<NewsScreenState> emit) async {
    final containerNews = NewsListContainer.cache();
    final oneNew = containerNews.news[event.id];
    emit(state.copyWith(oneNew: oneNew));

  }


}
