import 'package:flutter/material.dart';
import 'package:project_template/src/core/utils/app_colors.dart';
import 'package:project_template/src/core/widgets/text_widget.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(color: AppColors.neutral700),
      child: const Row(
        children: [
          TextWidget("some data"),
          TextWidget("some data"),
          TextWidget("some data"),
        ],
      ),
    );
  }
}
