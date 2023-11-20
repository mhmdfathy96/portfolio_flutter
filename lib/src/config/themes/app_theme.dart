import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_strings.dart';

ThemeData appTheme = ThemeData(
  primaryColor: AppColors.primary500,
  scaffoldBackgroundColor: AppColors.neutral100,
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
    color: AppColors.neutral100,
    centerTitle: true,
    shadowColor: AppColors.neutral300,
    elevation: 0,
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: AppColors.neutral300,
      ),
      borderRadius: const BorderRadius.vertical(
        bottom: Radius.circular(12),
      ),
    ),
    iconTheme: IconThemeData(
      color: AppColors.neutral900, //change your color here
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(AppColors.primary500),
    ),
  ),
  fontFamily: AppStrings.fontFamily,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primary500,
    brightness: Brightness.light,
    background: AppColors.neutral100,
  ),
  // useMaterial3: true,
);
