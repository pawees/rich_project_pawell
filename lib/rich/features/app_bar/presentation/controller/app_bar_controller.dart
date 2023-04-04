import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:rich_project_pawell/rich/core/constants/texts.dart';

class AppBarController extends GetxController {
  final title = nb_news.obs;
  bool variant = false;

  void changeTitle() async {
    if (!variant) {
      title.value = 'Bad news';
    } else {
      title.value = 'Good news';
    }
    variant = !variant;
  }

}
