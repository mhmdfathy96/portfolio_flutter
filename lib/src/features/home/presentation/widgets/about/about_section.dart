
import 'package:flutter/material.dart';
import 'package:project_template/src/core/responsive/responsive.dart';
import 'package:project_template/src/core/widgets/section_widget.dart';
import 'package:project_template/src/features/home/presentation/widgets/about/about_mobile.dart';
import 'package:project_template/src/features/home/presentation/widgets/about/about_web.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionWidget(child: Responsive(mobile: AboutMobile(),  web: AboutWeb()));
  }
}