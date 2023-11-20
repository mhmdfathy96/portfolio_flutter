import 'package:flutter/material.dart';
import 'package:project_template/src/core/utils/app_colors.dart';

import '../utils/app_text_styles.dart';
import 'text_widget.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;

  const TextButtonWidget(
      {Key? key, required this.text, required this.onPressed, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      clipBehavior: Clip.hardEdge,
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.zero,
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        // You can add more styling properties here if needed
      ),
      child: TextWidget(
        text,
        textStyle: AppTextStyle.p2.copyWith(
          color:color?? AppColors.primary500,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
