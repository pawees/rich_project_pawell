import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/news.dart';
import '../../domain/i_news_repository.dart';

class NewsScreenController extends GetxController {
  //this is constructor?
  static final _news_service = Get.find<INewsRepository>();


  double _offset = 0.0;
  late ScrollController scrollContr;
  var news_lenght = 0.obs;

  @override
  void onInit() async {
    List<News> n = await _news_service.getNews();
    news_lenght.value = n.length;
    super.onInit();
  }

  saveScrollOffset(offset) {
    print('!!!!!!!!!!!!!!!!!!');
    _offset = offset;

  }

  ScrollController getController() =>
      scrollContr = ScrollController(initialScrollOffset: _offset,);



  void addListenersss(scr) {
    scr.addListener(() {
      saveScrollOffset(scrollContr.offset);
    });
  }



}
