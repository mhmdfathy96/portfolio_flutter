import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_template/src/core/providers/scroll_provider.dart';
import 'package:project_template/src/core/utils/app_colors.dart';
import 'package:project_template/src/core/widgets/text_widget.dart';
import 'package:provider/provider.dart';

import '../../../../../core/responsive/responsive.dart';

class HeaderButton extends StatelessWidget {
  final String text;
  final int index;
  const HeaderButton({
    super.key,
    required this.text,
    required this.index,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.w),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          border: Provider.of<ScrollProvider>(context).currentIndex == index
              ? Border(
                  bottom: BorderSide(
                      color:Responsive.isWeb(context)?  Provider.of<ScrollProvider>(context).isOnTop
                          ? AppColors.primary500
                          : AppColors.neutral100:AppColors.primary500,
                      width: 2))
              : null,
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 2.0),
          child: InkWell(
            onTap: () {
              Provider.of<ScrollProvider>(context, listen: false).jumpTo(index);
              if (!Responsive.isWeb(context)) {
                Navigator.of(context).pop();
              }
            },
            child: TextWidget(
              text,
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Responsive.isWeb(context)? Provider.of<ScrollProvider>(context).isOnTop
                    ? null
                    : AppColors.neutral100:null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
