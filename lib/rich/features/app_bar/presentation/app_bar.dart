import 'package:flutter/material.dart';

appBar(title,[leading,action]) {
  return AppBar(
    leading: Icon(Icons.accessibility_sharp),
    title: Text(title),
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.transparent,
    actions: [],
  );
}
