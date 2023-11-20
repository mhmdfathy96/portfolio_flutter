import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';
import '../utils/assets_manager.dart';
import 'svg_button.dart';
import 'text_widget.dart';

class ValidationRow extends StatelessWidget {
  final bool isValid;
  final String text;
  const ValidationRow({super.key, required this.isValid, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SVGButton(
          svgPath: isValid
              ? Assets.imagesSvgCheckCircleOutline
              : Assets.imagesSvgInfoOutline,
          width: 15,
          color: isValid ? AppColors.success500 : AppColors.error500,
        ),
        const SizedBox(
          width: 9,
        ),
        TextWidget(
          text,
          textStyle: AppTextStyle.p5,
        ),
      ],
    );
  }
}
