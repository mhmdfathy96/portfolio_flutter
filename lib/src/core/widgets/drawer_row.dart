import 'package:flutter/material.dart';
import 'package:project_template/src/core/responsive/media_query_values.dart';

import '../utils/app_text_styles.dart';
import 'svg_button.dart';
import 'text_widget.dart';

class DrawerRow extends StatelessWidget {
  final String? svgPath;
  final IconData? iconData;
  final VoidCallback? onPressed;
  final String label;
  final TextStyle? style;

  const DrawerRow(
      {Key? key,
      this.svgPath,
      this.onPressed,
      this.iconData,
      required this.label,
      this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        children: [
          SizedBox(
            width: context.width * .07,
          ),
          if (svgPath != null)
            SVGButton(
              svgPath: svgPath!,
              color: Colors.white,
              width: 30,
            ),
          if (iconData != null)
            Icon(
              iconData,
              color: Colors.white,
            ),
          SizedBox(
            width: context.width * .05,
          ),
          TextWidget(
            label,
            textStyle: style ?? AppTextStyle.p2.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
