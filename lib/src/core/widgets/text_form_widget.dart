import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../config/locale/app_localizations.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class TextFormWidget extends StatelessWidget {
  final String labelText;
  final TextStyle? textStyle;
  final String? Function(String?)? validatorFunc;
  final Function(String)? onChanged;
  final TextEditingController? textEditingController;
  final TextInputType textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final String? initialValue;
  final int? minLines;
  final int? maxLines;
  final bool obscure;
  final String? hint;
  final Widget? icon;
  final Widget? prefix;
  final Widget? suffix;
  final bool enabled;
  final FocusNode? focusNode;
  final Function(String)? onFieldSubmitted;
  final double? height;

  const TextFormWidget({
    Key? key,
    required this.labelText,
    this.validatorFunc,
    this.textEditingController,
    this.textInputType = TextInputType.text,
    this.inputFormatters,
    this.minLines = 1,
    this.maxLines = 1,
    this.obscure = false,
    this.hint,
    this.icon,
    this.prefix,
    this.suffix,
    this.enabled = true,
    this.textStyle,
    this.focusNode,
    this.onChanged,
    this.onFieldSubmitted,
    this.initialValue,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TextInputFormatter>? getInputFormatters() {
      return inputFormatters;
    }

    return SizedBox(
      height: height,
      child: TextFormField(
        cursorHeight: height == null ? null : height! * .75,
        enabled: enabled,
        style: textStyle ?? AppTextStyle.p1,
        initialValue: initialValue,
        validator: validatorFunc,
        focusNode: focusNode,
        obscureText: obscure,
        controller: textEditingController,
        minLines: minLines,
        maxLines: maxLines,
        keyboardType: textInputType,
        inputFormatters: getInputFormatters(),
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          labelText: AppLocalizations.translate(labelText),
          hintText: hint == null
              ? AppLocalizations.translate(labelText)
              : AppLocalizations.translate(hint!),
          hintStyle: AppTextStyle.p1.copyWith(color: AppColors.neutral500),
          fillColor: enabled ? AppColors.neutral100 : AppColors.neutral200,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: AppColors.neutral500,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: AppColors.primary500,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: AppColors.error500,
            ),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          prefixIcon: prefix,
          suffixIcon: suffix,
          icon: icon,
          labelStyle: AppTextStyle.p1,
        ),
      ),
    );
  }
}
