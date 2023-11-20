import 'package:flutter/material.dart';
import 'package:project_template/src/core/utils/app_colors.dart';
import 'package:project_template/src/core/widgets/svg_button.dart';

class SocialIconWidget extends StatelessWidget {
  final String svgPath;
  final VoidCallback? onPressed;
  const SocialIconWidget({super.key, required this.svgPath, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.neutral100,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.neutral300,
            blurRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: SVGButton(
        svgPath: svgPath,
        onPressed: onPressed,
      ),
    );
  }
}
