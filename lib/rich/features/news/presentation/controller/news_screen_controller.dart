import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/news.dart';
import '../../domain/i_news_repository.dart';

class NewsScreenController extends GetxController {

  RxDouble _offset = 0.0.obs;

  ///can use instead constructor init first time
  @override
  void onInit() {
    super.onInit();
  }

  initialController() {
    ScrollController scrollContr = ScrollController(
      initialScrollOffset: _offset.value,
    );
    startListen(scrollContr);
    return scrollContr;
  }

  void startListen(scr) {
    scr.addListener(() {
      saveScrollOffset(scr.offset);
    });
  }

  void saveScrollOffset(offset) {
    debugPrint((_offset.value).toString());
    _offset.value = offset;
  }
}