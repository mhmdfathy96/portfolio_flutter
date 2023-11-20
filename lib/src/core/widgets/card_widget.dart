import 'package:flutter/material.dart';
import 'package:project_template/src/core/responsive/media_query_values.dart';

import '../utils/app_colors.dart';

class CardWidget extends StatelessWidget {
  final Widget child;
  final Color? color;

  const CardWidget({Key? key, required this.child, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: context.width * .05, vertical: context.width * .05),
      margin: EdgeInsets.symmetric(
          horizontal: context.width * .02, vertical: context.width * .03),
      width: double.infinity,
      // height: context.width * .57,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.neutral700.withOpacity(.3),
              spreadRadius: .8,
              blurRadius: 4,
              offset: const Offset(0, 4),
            )
          ]),
      child: child,
    );
  }
}
