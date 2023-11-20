import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class BottomSheetHeader extends StatelessWidget {
  const BottomSheetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Divider(
          thickness: 5,
          color: AppColors.neutral900,
          indent: 100,
          endIndent: 100,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
