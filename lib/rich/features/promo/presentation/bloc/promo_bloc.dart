import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:meta/meta.dart';

import '../../../news/domain/entities/news.dart';
import '../../../news/domain/i_news_repository.dart';

part 'promo_event.dart';
part 'promo_state.dart';



class PromoBloc extends Bloc<PromoEvent, PromoState> {

  static final _promo_service = Get.find<INewsRepository>();
  //true

  PromoBloc() : super(PromoInitial()) {
    on<PromoEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<InitPromo>((event, emit) => _initPromo(emit));

  }


  Future<void> _initPromo(Emitter<PromoState> emit) async {

    List<News> promo = await _promo_service.getNews();

    emit(PromoScreenState(promo,));



  }
}


