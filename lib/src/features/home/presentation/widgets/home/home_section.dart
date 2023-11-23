import 'package:flutter/material.dart';
import 'package:project_template/src/core/responsive/responsive.dart';
import 'package:project_template/src/core/utils/app_colors.dart';
import 'package:project_template/src/core/widgets/section_widget.dart';
import 'package:project_template/src/features/home/presentation/widgets/home/home_mobile.dart';
import 'package:project_template/src/features/home/presentation/widgets/home/home_web.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
        color: AppColors.primary100.withOpacity(.2),
        child: const Responsive(
            mobile: HomeMobile(), web: HomeWeb()));
  }
}
