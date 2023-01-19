import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:meta/meta.dart';

import '../../../navigation/domain/entity/main_navigation_route_names.dart';
import '../../domain/entities/news.dart';
import '../../domain/i_news_repository.dart';
import '../../service/mock_repository.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {

  static final _news_service = Get.find<INewsRepository>();
  //true

  NewsBloc() : super(NewsInitial()) {
    on<NewsEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<InitNews>((event, emit) => _initNews(emit));

  }


  Future<void> _initNews(Emitter<NewsState> emit) async {
    print(_news_service is MockNewsRepo);

    List<News> news = await _news_service.getNews();

    emit(NewsScreenState(news,));



  }
}

