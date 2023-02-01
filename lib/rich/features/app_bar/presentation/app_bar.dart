import 'package:flutter/material.dart';
import 'package:rich_project_pawell/rich/core/test_keys.dart';

appBar(title,[leading,action]) {
  return AppBar(
    key: HomeTestKeys.appBar,
    leading: Icon(Icons.accessibility_sharp),
    title: Text(title),
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.transparent,
    actions: [],
  );
}
