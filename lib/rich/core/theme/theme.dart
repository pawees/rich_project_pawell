import 'package:flutter/material.dart';
import 'package:rich_project_pawell/rich/core/theme/color_schemes.dart';
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
      colorScheme: lightColorScheme


  );

  static ThemeData themeDark = ThemeData(
      brightness: Brightness.dark,
      textTheme: MyTextTheme.darkText,
      elevatedButtonTheme: MyElevatedButtonTheme.darkBtn,
      //in widgets no need set style anymore
      inputDecorationTheme: MyTextFieldTheme.darkInputDecorationTheme,
      //in widgets no need set style anymore
      colorScheme: darkColorScheme

  );
}
