import 'package:flutter/material.dart';
import 'package:project_template/src/core/responsive/media_query_values.dart';

import '../utils/app_colors.dart';

class ContainerWidget extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? height;
  final double? width;
  final double borderRadius;
  final List<BoxShadow>? boxShadow;
  final Border? border;

  const ContainerWidget(
      {Key? key,
      required this.child,
      this.color,
      this.padding,
      this.height,
      this.borderRadius = 12,
      this.boxShadow,
      this.border,
      this.margin, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          EdgeInsets.symmetric(
              horizontal: context.width * .07, vertical: context.width * .01),
      margin: margin ??
          EdgeInsets.symmetric(
            // horizontal: context.width * .04,
            vertical: context.height * .008,
          ),
      width: width??double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: border ?? Border.all(color: AppColors.neutral200, width: 1),
        color: color ?? AppColors.neutral100,
        boxShadow: boxShadow ??
            [
              BoxShadow(
                color: AppColors.neutral300,
                blurRadius: .25,
                offset: const Offset(0, 1.5),
              ),
            ],
      ),
      height: height,
      child: child,
    );
  }
}
