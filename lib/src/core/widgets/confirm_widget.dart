import 'package:flutter/material.dart';
import 'package:project_template/src/core/utils/app_text_styles.dart';
import 'package:project_template/src/core/responsive/media_query_values.dart';
import 'package:project_template/translations/locale_keys.g.dart';

import '../utils/app_colors.dart';
import 'button_widget.dart';
import 'text_widget.dart';

class ConfirmWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? label;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  const ConfirmWidget(
      {Key? key,
      this.onPressed,
      this.label,
      this.backgroundColor,
      this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.height * 0.06,
      child: ButtonWidget(
        backgroundColor: backgroundColor,
        onPressed: onPressed,
        child: TextWidget(
          label ?? LocaleKeys.saveData,
          textStyle: textStyle ??
              AppTextStyle.h8.copyWith(color: AppColors.neutral100),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
