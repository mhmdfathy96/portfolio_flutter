
import 'package:flutter/material.dart';
import 'package:project_template/src/core/utils/app_text_styles.dart';
import 'package:project_template/src/core/responsive/media_query_values.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/auto_size_text.dart';
import '../../../../core/widgets/svg_button.dart';
import '../../../../core/widgets/text_widget.dart';

class SVGWithLabel extends StatelessWidget {
  final String svgPath;
  final String label;
  final String value;
  const SVGWithLabel(
      {Key? key,
      required this.svgPath,
      required this.label,
      required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SVGButton(
          svgPath: svgPath,
          width: context.width * .08,
          color: AppColors.primary500,
        ),
        TextWidget(label,
            textStyle: AppTextStyle.p3.copyWith(color: AppColors.neutral200)),
        Container(
          alignment: Alignment.center,
          width: context.width * .2,
          padding: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColors.primary500.withOpacity(.3),
          ),
          child: AutoSizedTextWidget(
            text: value,
              textStyle: AppTextStyle.p3.copyWith(color: AppColors.primary500),
              minFontSize: 10,),
        ),
      ],
    );
  }
}
