

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rich_project_pawell/rich/core/test_keys.dart';
import 'controller/app_bar_controller.dart';

appBar(title, [leading, action]) {
  final AppBarController appBarController =
      Get.put(AppBarController(), permanent: false);

  return Obx(() => AppBar(
        key: HomeTestKeys.appBar,
        leading: IconButton(
            onPressed: () {
              appBarController.changeTitle();
            },
            key: HomeTestKeys.appBarIcon,
            icon: const Icon(Icons.accessibility_sharp)),
        title: Text('${appBarController.title}'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [],
      ));
}
