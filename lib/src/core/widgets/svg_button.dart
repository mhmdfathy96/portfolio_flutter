import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SVGButton extends StatelessWidget {
  final String svgPath;
  final Color? color;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;

  const SVGButton(
      {Key? key,
      required this.svgPath,
      this.color,
      this.onPressed,
      this.width,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SvgPicture.asset(
        svgPath,
        colorFilter:
            color == null ? null : ColorFilter.mode(color!, BlendMode.srcIn),
        fit: width == null && height == null ? BoxFit.scaleDown : BoxFit.fill,
        width: width,
        height: height,
      ),
    );
  }
}
