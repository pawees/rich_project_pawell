import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:rich_project_pawell/rich/domain/screen_factory.dart';

import '../../../promo/presentation/bloc/promo_bloc.dart';



class NavigatorBarController extends GetxController {
  static final _screenFactory = Get.find<ScreenFactory>();

  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
    _screenFactory.makePromo(true);
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