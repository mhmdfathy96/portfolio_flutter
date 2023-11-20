import 'package:flutter/material.dart';
import 'package:project_template/src/core/responsive/media_query_values.dart';

import '../utils/app_colors.dart';

class TableCellWidget extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  const TableCellWidget({Key? key, required this.child, this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: SizedBox(
        height: context.height*.15,
        child: ColoredBox(
          color: backgroundColor??AppColors.neutral900,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
