import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rich_project_pawell/rich/core/test_keys.dart';

import '../../news/presentation/controller/news_screen_controller.dart';

appBar(title,[leading,action]) {

  final NewsScreenController newsScreenController =
    Get.put(NewsScreenController(), permanent: false);

  return Obx(()=> AppBar(


    key: HomeTestKeys.appBar,
    leading: IconButton(
        onPressed: (){
          print('123');
          newsScreenController.changeTitle('Хуёвости');
        },
        key: HomeTestKeys.appBarIcon,
        icon: const Icon(Icons.accessibility_sharp)
    ),
    title: Text('${newsScreenController.title}'),
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.transparent,
    actions: [],
  )
  );
}
