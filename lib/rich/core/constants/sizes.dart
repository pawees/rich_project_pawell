import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SizeConfig {
  static late double screenWidth;
  static late double screenHeight;

  static late double defaultSize;
  static late double newsSize;
  static late double bottomNavSize;
  static late double iconSizePng;
  static late double iconSizeSvg;

  static Orientation? orientation;

  //static double get defaultPadding => defaultSize * 1.5;
  static double get defaultPadding => 0.025.sw;

  // static double? get iconSizePng => SizeConfig.defaultSize * 1.7;
  // static double? get iconSizeSvg => SizeConfig.defaultSize * 2.5;

  static double? get newsCardHeight => defaultSize * 30.h;
  static double? get newsCardWidth => defaultSize * 175.w;



  void init(BoxConstraints constraints, Orientation orientation) {
    screenWidth = constraints.maxWidth;
    screenHeight = constraints.maxHeight;
    //Apple iPhone 11 viewport size is 414 x 896 (px)
    //With iPhone 11, i set defaultSize = 10;
    //So if the screen increase or decrease then our defaultSize also vary
    if (orientation == Orientation.portrait) {
      defaultSize = screenHeight * 10 / 878;
      newsSize = screenHeight * 10 / 878;
      bottomNavSize = screenHeight * 100 / 878;
      iconSizePng = screenHeight * 26 / 878;
      iconSizeSvg = screenHeight * 26 / 878;
    } else {
      defaultSize = screenHeight * 10 / 375;
      newsSize = screenHeight * 80 / 375;
      bottomNavSize = screenHeight * 57 / 375;
      iconSizePng = screenHeight * 16 / 375;
      iconSizeSvg = screenHeight * 16 / 375;
    }
  }

  ///Singleton factory
  static final SizeConfig _instance = SizeConfig._internal();

  factory SizeConfig() {
    return _instance;
  }

  SizeConfig._internal();
}