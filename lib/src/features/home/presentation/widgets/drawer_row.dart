import 'package:flutter/material.dart';
import 'package:project_template/src/core/responsive/media_query_values.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/svg_button.dart';
import '../../../../core/widgets/text_widget.dart';

class DrawerRow extends StatefulWidget {
  final String? svgPath;
  final VoidCallback? onPressed;
  final bool isSelected;
  final String label;
  final TextStyle? style;
  final Widget? end;

  const DrawerRow({
    Key? key,
    this.svgPath,
    this.onPressed,
    this.isSelected = true,
    required this.label,
    this.style,
    this.end,
  }) : super(key: key);

  @override
  State<DrawerRow> createState() => _DrawerRowState();
}

class _DrawerRowState extends State<DrawerRow> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      borderRadius: BorderRadius.circular(8),
      splashColor: AppColors.primary100,
      highlightColor: AppColors.primary100,
      child: Row(
        children: [
          SizedBox(
            width: context.width * .035,
            height: 43,
          ),
          if (widget.svgPath != null)
            SVGButton(
              svgPath: widget.svgPath!,
              color: isPressed || widget.isSelected
                  ? AppColors.primary500
                  : AppColors.neutral600,
            ),
          SizedBox(
            width: context.width * .05,
          ),
          TextWidget(
            widget.label,
            textStyle: widget.style ??
                AppTextStyle.h7.copyWith(
                  color: isPressed || widget.isSelected
                      ? AppColors.primary500
                      : AppColors.neutral600,
                ),
          ),
          const Spacer(),
          if (widget.end != null) widget.end!,
        ],
      ),
    );
  }
}