import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';


// class NavigatorBarController extends GetxController {
//   var tabIndex = 0;
//
//   void changeTabIndex(int index) {
//     tabIndex = index;
//     update();
//   }
// }


class LandingPageController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
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