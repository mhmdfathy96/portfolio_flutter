import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_template/src/core/utils/screen_size.dart';

class SectionWidget extends StatelessWidget {
  final Color? color;
  final Widget child;
  final double? height;
  const SectionWidget(
      {super.key, this.color, required this.child, this.height});

  bool get applyMinimum {
    return height == null
        ? true
        : height! < screenHeight.h
            ? false
            : true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: BoxDecoration(color: color),
        constraints:
            applyMinimum ? BoxConstraints(minHeight: screenHeight.h) : null,
        child: child);
  }
}
