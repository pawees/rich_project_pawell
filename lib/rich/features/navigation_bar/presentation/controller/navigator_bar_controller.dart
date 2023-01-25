import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:rich_project_pawell/rich/domain/screen_factory.dart';

import '../../../news/domain/entities/news.dart';
import '../../../promo/presentation/bloc/promo_bloc.dart';
import 'package:flutter/material.dart';



class NavigatorBarController extends GetxController {
  late var context;

  NavigatorBarController ({required this.context});

  static final _screenFactory = Get.find<ScreenFactory>();

  var tabIndex = 0.obs;


  void changeTabIndex(int index) async {
    tabIndex.value = index;
    switch (index) {
      case 0:
        context.go('/news',extra: [News(title: 'title', text: 'text', id: 1, imageUrl: 'imageUrl')]);
        break;
      case 1:
        context.go('/promo');
        break;
      case 2:
        context.go('/card');
        break;
      default:
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}