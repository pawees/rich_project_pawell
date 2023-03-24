import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:rich_project_pawell/rich/core/constants/texts.dart';
import 'package:rich_project_pawell/rich/domain/screen_factory.dart';

import '../../../news/domain/entities/news.dart';
import '../../../promo/presentation/bloc/promo_bloc.dart';
import 'package:flutter/material.dart';



class NewsScreenController extends GetxController {


  RxString title = nb_news.obs;


  void changeTitle(String title) async {
    title = title;
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