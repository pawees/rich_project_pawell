import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rich_project_pawell/rich/core/constants/sizes.dart';


class Images {

  ///splash scree'n img
  static var splash_part_of_logo1 = Image(image: AssetImage('assets/images/dor_logo/Vector.png'));
  static var splash_part_of_logo2 = Image(image:AssetImage('assets/images/dor_logo/Vector1.png'));
  static var splash_part_of_logo3 = Image(image:AssetImage('assets/images/dor_logo/Vector (2).png'));
  static var splash_part_of_logo4 = Image(image:AssetImage('assets/images/dor_logo/Vector (3).png'));
  static var splash_part_of_logo5 = Image(image:AssetImage('assets/images/dor_logo/image.png'));
  static const splash_part_of_logo6 = Image(image:AssetImage('assets/images/dor_logo/flow6.png'));
  ///


  ///nav_bar logo's
  static var nav_bar_news = SvgPicture.asset('assets/images/dor_nav_bar_png/logo.svg', width: SizeConfig.iconSizeSvg,height: SizeConfig.iconSizeSvg);
  static var nav_bar_promo = SvgPicture.asset('assets/images/dor_nav_bar_png/video-svgrepo-com.svg', width: SizeConfig.iconSizeSvg);
  static var nav_bar_card = SvgPicture.asset('assets/images/dor_nav_bar_png/card.svg', width: SizeConfig.iconSizeSvg);
  static var nav_bar_map = SvgPicture.asset('assets/images/dor_nav_bar_png/reading-mode-mobile-svgrepo-com.svg', width: SizeConfig.iconSizeSvg);
  static var nav_bar_catalog = Image.asset('assets/images/dor_nav_bar_png/new-flow-icon.png', width: 225,);
  static var nav_bar_profiile = SvgPicture.asset('assets/images/dor_nav_bar_png/profile.svg', width: SizeConfig.iconSizeSvg);

  ///

  ///error
  static var error = SvgPicture.asset('assets/images/dor_nav_bar_png/cloud-error-internet-data-network-sync-reject-svgrepo-com.svg',              width: double.infinity,
    height: 150,);
///
}
