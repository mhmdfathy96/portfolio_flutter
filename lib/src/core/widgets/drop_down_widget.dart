import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class DropdownWidget extends StatelessWidget {
  final int selectedIndex;
  final List models;
  final List<Widget> widgets;
  final Function(int?)? onChange;

  const DropdownWidget(
      {Key? key,
      required this.selectedIndex,
      required this.models,
      required this.widgets,
      required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      menuMaxHeight: 200,
      alignment: Alignment.bottomCenter,
      borderRadius: BorderRadius.circular(10),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        fillColor: AppColors.neutral100,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide: BorderSide(
            color: AppColors.primary500,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide: BorderSide(
            color: AppColors.primary500,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide: BorderSide(
            color: AppColors.neutral300,
          ),
        ),
      ),
      style: AppTextStyle.p1.copyWith(color: AppColors.neutral900),
      value: selectedIndex,
      items: models
          .map((e) => DropdownMenuItem(
              value: models.indexOf(e), child: widgets[models.indexOf(e)]))
          .toList(),
      onChanged: onChange,
    );
  }
}
