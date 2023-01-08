import 'package:flutter/material.dart';
import 'package:rich_project_pawell/rich/core/constants/colors.dart';

class MyTextFieldTheme {

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
        border: OutlineInputBorder(),
        prefixIconColor: COLOR_CONST.primaryColor,
        floatingLabelStyle: TextStyle(color: COLOR_CONST.primaryColor ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: COLOR_CONST.primaryColor)
        ),
      );

  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
        border: OutlineInputBorder(),
        prefixIconColor: COLOR_CONST.secondaryColor,
        floatingLabelStyle: TextStyle(color: COLOR_CONST.secondaryColor),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: COLOR_CONST.secondaryColor)
        ),
      );
}

