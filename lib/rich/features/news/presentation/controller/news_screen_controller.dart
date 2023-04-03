import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:rich_project_pawell/rich/core/constants/texts.dart';
import 'package:rich_project_pawell/rich/domain/screen_factory.dart';

import '../../../news/domain/entities/news.dart';
import '../../../promo/presentation/bloc/promo_bloc.dart';
import 'package:flutter/material.dart';



class NewsScreenController extends GetxController {


  final title = nb_news.obs;
  bool variant = false;

  void changeTitle() async {
    if(!variant){
      title.value = 'Bad news';
    }
    else{
      title.value = 'Good news';
    }
    variant = !variant;
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