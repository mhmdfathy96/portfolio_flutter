import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:project_template/src/core/responsive/media_query_values.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';
import 'text_widget.dart';

class CardWithTitle extends StatelessWidget {
  final String title;
  final String content;
  final int flex;
  final Color? textColor;
  const CardWithTitle({super.key, required this.title, required this.content,this.flex=1, this.textColor,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: context.width*.03),
                child: Container(
                  // height: context.width * .1,
                  constraints: BoxConstraints(
                    minHeight: context.width * .1,
                  ),
                  width: double.infinity,
                  padding:  EdgeInsets.symmetric(vertical: context.width*.01,horizontal:context.width*.03 ),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.neutral300),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ExpandableText(
                                    content,
                                    expandText: 'Read more',
                                    collapseText: 'Show less',
                                    maxLines: 3,
                                    linkColor: Colors.blue,
                                    style: AppTextStyle.p2.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: textColor,
                                    ),
                                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: context.width * .05,
                child: TextWidget(
                  title,
                  textStyle: AppTextStyle.p3.copyWith(
                    color: AppColors.neutral300,
                    backgroundColor: AppColors.neutral100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
