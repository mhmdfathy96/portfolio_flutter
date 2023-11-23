import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/url_launcher.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/button_widget.dart';
import '../../../../../core/widgets/text_widget.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              "Hello,",
              textStyle: AppTextStyle.h5.copyWith(fontSize: 24.sp),
            ),
            SizedBox(
              height: 16.h,
            ),
            TextWidget(
              "I'm Mohamed Fat-hy",
              textStyle: AppTextStyle.h1.copyWith(
                  fontSize: 30.sp,
                  color: AppColors.primary500,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16.h,
            ),
            AnimatedTextKit(
              isRepeatingAnimation: true,
              repeatForever: true,
              animatedTexts: [
                TypewriterAnimatedText(
                  'I\'m a Mobile App Developer',
                  textStyle: AppTextStyle.h5.copyWith(fontSize: 24.sp),
                ),
                TypewriterAnimatedText(
                  'I\'m a Flutter Developer',
                  textStyle: AppTextStyle.h5.copyWith(fontSize: 24.sp),
                ),
                TypewriterAnimatedText(
                  'I\'m a Freelancer',
                  textStyle: AppTextStyle.h5.copyWith(fontSize: 24.sp),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            TextWidget(
              "Base in Cairo, Egypt",
              textStyle: AppTextStyle.h6
                  .copyWith(fontSize: 20.sp, color: AppColors.neutral800),
            ),
            SizedBox(
              height: 32.h,
            ),
            ButtonWidget(
                child: TextWidget(
                  "Download CV",
                  textStyle: AppTextStyle.h1.copyWith(fontSize: 20.sp),
                ),
                onPressed: () async {
                  await UrlLauncherHelper.launch(Uri.parse(AppStrings.cvPath));
                })
          ],
        ),
      ],
    );
  }
}
