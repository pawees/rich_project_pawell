import 'package:flutter/material.dart';
import 'package:rich_project_pawell/rich/core/theme/elevated_button.dart';
import 'package:rich_project_pawell/rich/core/theme/text_fields_theme.dart';
import 'package:rich_project_pawell/rich/core/theme/text_theme.dart';

class MyAppTheme {
  MyAppTheme._();

  static ThemeData themeLight = ThemeData(
      backgroundColor: Colors.white,
      brightness: Brightness.light,
      textTheme: MyTextTheme.lightText,
      elevatedButtonTheme: MyElevatedButtonTheme.lightBtn,
      //in widgets no need set style anymore
      inputDecorationTheme: MyTextFieldTheme.lightInputDecorationTheme,
      //in widgets no need set style anymore


      primarySwatch: const MaterialColor(0xFFd3d1d1, <int, Color>{
        50: Color(0xFFd3d1d1),
        100: Color(0xFFd3d1d1),
        200: Color(0xFFd3d1d1),
        300: Color(0xFFd3d1d1),
        400: Color(0xFFd3d1d1),
        500: Color(0xFFd3d1d1),
        600: Color(0xFFd3d1d1),
        700: Color(0xFFd3d1d1),
        800: Color(0xFFd3d1d1),
        900: Color(0xFFd3d1d1),
      }));

  static ThemeData themeDark = ThemeData(
      brightness: Brightness.dark,
      textTheme: MyTextTheme.darkText,
      elevatedButtonTheme: MyElevatedButtonTheme.darkBtn,
      //in widgets no need set style anymore
      inputDecorationTheme: MyTextFieldTheme.darkInputDecorationTheme,
      //in widgets no need set style anymore

  );
}
