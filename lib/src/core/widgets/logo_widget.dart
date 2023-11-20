import 'package:flutter/material.dart';

import '../utils/assets_manager.dart';
import 'svg_button.dart';

class LogoWidget extends StatelessWidget {
  final double? width;

  const LogoWidget({Key? key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SVGButton(
      svgPath: Assets.imagesSvgLogo,
      width: width,
    );
  }
}
