import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/url_launcher.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/widgets/button_widget.dart';
import '../../../../../core/widgets/text_widget.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  "Hello,",
                  textStyle: AppTextStyle.h5,
                ),
                SizedBox(
                  height: 8.h,
                ),
                TextWidget(
                  "I'm Mohamed Fat-hy",
                  textStyle: AppTextStyle.h1.copyWith(
                      color: AppColors.primary500, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16.h,
                ),
                AnimatedTextKit(
                  isRepeatingAnimation: true,
                  repeatForever: true,
                  animatedTexts: [
                    TypewriterAnimatedText('I\'m a Mobile App Developer',
                        textStyle: AppTextStyle.h5),
                    TypewriterAnimatedText('I\'m a Flutter Developer',
                        textStyle: AppTextStyle.h5),
                    TypewriterAnimatedText('I\'m a Freelancer',
                        textStyle: AppTextStyle.h5),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextWidget(
                  "Base in Cairo, Egypt",
                  textStyle:
                      AppTextStyle.h6.copyWith(color: AppColors.neutral800),
                ),
                SizedBox(
                  height: 32.h,
                ),
                ButtonWidget(
                    child: TextWidget(
                      "Download CV",
                      textStyle: AppTextStyle.p1,
                    ),
                    onPressed: () async {
                      await UrlLauncherHelper.launch(
                          Uri.parse(AppStrings.cvPath));
                    })
              ],
            ),
            Image.asset(
              Assets.imagesPngSoftwareDeveloper,
              width: 150.w,
            ),
          ],
        ),
      ],
    );
  }
}
