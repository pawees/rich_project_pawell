import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_project_pawell/rich/features/navigation_bar/presentation/controller/navigator_bar_controller.dart';


class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavigatorBarController navigatorBarController =
        Get.put(NavigatorBarController(), permanent: false);
    return const Placeholder();
  }
}
