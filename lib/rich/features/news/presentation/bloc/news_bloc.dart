import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:meta/meta.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

import '../../domain/entities/news.dart';
import '../../domain/enums/enums.dart';
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
    return NewsListContainer(
        news: news ?? [], currentPage: currentPage ?? this.currentPage);
  }
  static final _news_service = Get.find<INewsRepository>();

  static Future<NewsListContainer> cache() async {
    if (__cacheContainers.isEmpty) {
      return NewsListContainer(currentPage: 0, news: await _news_service.getNews(),);
    } else {
      return __cacheContainers[0];
    }
  }

  // static Future<NewsListContainer> newContainer(
  //
  //     ) async {
  //   var newContainer =
  //   NewsListContainer(news: await _news_service.getNews()?? [], currentPage: 0);
  //     __cacheContainers.add(newContainer);
  //     return newContainer;
  //
  //
  // }

}

class NewsBloc extends Bloc<NewsEvent, NewsScreenState> {

  NewsBloc(NewsScreenState initialState) : super(initialState) {
    on<NewsEvent>((event, emit) async {
      if (event is InitNews) _initNews(event, emit);
      if (event is DetailsNews) _detailsNews(event, emit);
      if (event is InitError) _initError(event, emit);

      // TODO: implement event handler
    }, transformer: restartable());
  }

  Future<void> _initNews(InitNews event, Emitter<NewsScreenState> emit) async {
    final containerNews = await
        NewsListContainer.cache();
    final newState = state.copyWith(
        newsContainer: containerNews, status: GetAllRequestStatus.loaded);
    emit(newState);
  }

  Future<void> _initError(
      InitError event, Emitter<NewsScreenState> emit) async {
    final containerNews = await
        NewsListContainer.cache();
    final newState = state.copyWith(
        newsContainer: containerNews, status: GetAllRequestStatus.error);
    emit(newState);
  }

  Future<void> _detailsNews(
      DetailsNews event, Emitter<NewsScreenState> emit) async {
    final containerNews = await NewsListContainer.cache();
    final oneNew = containerNews.news[event.id];
    emit(state.copyWith(oneNew: oneNew));
  }
}
