import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:rich_project_pawell/rich/domain/screen_factory.dart';

import '../../../news/domain/entities/news.dart';
import '../../../promo/presentation/bloc/promo_bloc.dart';
import 'package:flutter/material.dart';



class NavigatorBarController extends GetxController {


  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
  TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 13);

  var tabIndex = 0.obs;


  void changeTabIndex(int index) async {
    tabIndex.value = index;
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