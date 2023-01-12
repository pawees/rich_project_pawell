import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:meta/meta.dart';

import '../../../navigation/domain/entity/main_navigation_route_names.dart';
import '../../service/mock_repository.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {

  static final _news_service = Get.find<MockNewsRepo>();

  NewsBloc() : super(NewsInitial()) {
    on<NewsEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<InitNews>((event, emit) => _initNews(emit));

  }


  Future<void> _initNews(Emitter<NewsState> emit) async {

    await Future.delayed(Duration(seconds: 4));

    await _news_service.getNews(123);

    emit(NewsScreenState(MainNavigationRouteNames.news));


  }
}

