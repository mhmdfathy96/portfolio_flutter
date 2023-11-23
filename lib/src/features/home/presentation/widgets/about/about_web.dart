import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_template/src/core/utils/app_colors.dart';
import 'package:project_template/src/core/utils/app_text_styles.dart';
import 'package:project_template/src/core/utils/assets_manager.dart';
import 'package:project_template/src/core/widgets/text_widget.dart';

import '../../../../../core/utils/app_strings.dart';

class AboutWeb extends StatelessWidget {
  const AboutWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50.w),
      child: Row(
        children: [
          Expanded(
            child: Image.asset(
              Assets.imagesJpegProfilePhoto,
              height: 900.h,
            ),
          ),
          SizedBox(
            width: 16.w,
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  "About Me",
                  textStyle: AppTextStyle.h3,
                ),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    TextWidget(
                      "Hello! ",
                      textStyle: AppTextStyle.h5,
                    ),
                    TextWidget(
                      "I'm Mohamed Fat-hy",
                      textStyle:
                          AppTextStyle.h4.copyWith(color: AppColors.primary500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.h,
                ),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'I combine our passion for design focused in people with advanced development technologies. ',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      TextSpan(
                        text: '${AppStrings.clients} clients',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' have procured exceptional results and happiness while working with me. ',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  softWrap: true,
                ),
                SizedBox(
                  height: 32.h,
                ),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Delivering work within ',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      TextSpan(
                        text: 'time and budget',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' which meets client’s requirements is our moto. when an unknown printer took a galley of type and scrambled it to make a type specimen book lorem Ipsum has been the industry\'s standard. Lorem Ipsum has been the industry\'s standard dummy text ever since.',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextWidget(
                          AppStrings.experience,
                          textStyle: AppTextStyle.h4.copyWith(
                            color: AppColors.neutral700,
                          ),
                        ),
                        TextWidget(
                          "Years Experience",
                          textStyle: AppTextStyle.h6.copyWith(
                              color: AppColors.neutral700,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Container(
                      height: 100.h,
                      width: 1,
                      color: AppColors.neutral200,
                    ),
                    Column(
                      children: [
                        TextWidget(
                          AppStrings.clients,
                          textStyle: AppTextStyle.h4.copyWith(
                            color: AppColors.neutral700,
                          ),
                        ),
                        TextWidget(
                          "Happy Clients",
                          textStyle: AppTextStyle.h6.copyWith(
                              color: AppColors.neutral700,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Container(
                      height: 100.h,
                      width: 1,
                      color: AppColors.neutral200,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextWidget(
                          AppStrings.projects,
                          textStyle: AppTextStyle.h4.copyWith(
                            color: AppColors.neutral700,
                          ),
                        ),
                        TextWidget(
                          "Projects Done",
                          textStyle: AppTextStyle.h6.copyWith(
                              color: AppColors.neutral700,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 64.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {
                          //todo scroll to portofolio
                        },
                        child: Row(
                          children: [
                            TextWidget(
                              "Discover My Work",
                              textStyle: AppTextStyle.h6.copyWith(
                                  color: AppColors.primary500,
                                  fontWeight: FontWeight.w700),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: AppColors.primary500,
                            )
                          ],
                        )),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
