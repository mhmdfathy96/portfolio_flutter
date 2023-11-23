import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../responsive/responsive.dart';
import '../utils/assets_manager.dart';
import 'svg_button.dart';

class LogoWidget extends StatelessWidget {
  final double? width;

  const LogoWidget({Key? key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.imagesPngLogo,
      width: 45.w,
    );
    // return SVGButton(
    //   svgPath: Assets.imagesPngLogo,
    //   width: width,
    // );
  }
}
