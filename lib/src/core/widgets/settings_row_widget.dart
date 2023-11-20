import 'package:flutter/material.dart';
import 'package:project_template/src/core/responsive/media_query_values.dart';

import '../utils/app_colors.dart';
import 'svg_button.dart';
import 'text_widget.dart';

class SettingsRowWidget extends StatelessWidget {
  final String? svgPath;
  final IconData? iconData;
  final VoidCallback? onPressed;
  final String label;
  final TextStyle? style;
  final Widget? lastWidget;
  final VoidCallback? onTap;

  const SettingsRowWidget(
      {Key? key,
      this.svgPath,
      this.iconData,
      this.onPressed,
      required this.label,
      this.style,
      this.lastWidget,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: context.height * .015,
          ),
          Row(
            children: [
              SizedBox(
                width: context.width * .07,
              ),
              if (svgPath != null)
                SVGButton(
                  svgPath: svgPath!,
                  color: AppColors.neutral900,
                  width: 25,
                ),
              if (iconData != null)
                Icon(
                  iconData,
                  color: AppColors.neutral900,
                ),
              SizedBox(
                width: context.width * .03,
              ),
              TextWidget(
                label,
                // textStyle:
                //     style ?? AppTextStyle.b1.copyWith(color: AppColors.dark),
              ),
              const Spacer(),
              if (lastWidget != null) lastWidget!,
              if (lastWidget != null)
                SizedBox(
                  width: context.width * .1,
                ),
            ],
          ),
          SizedBox(height: context.height * .015),
          Divider(
            color: AppColors.neutral300,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
