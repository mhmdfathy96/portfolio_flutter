import 'package:flutter/material.dart';
import 'package:project_template/src/features/home/presentation/widgets/footer.dart';

import '../../features/home/presentation/widgets/about/about_section.dart';
import '../../features/home/presentation/widgets/home/home_section.dart';
import '../../features/home/presentation/widgets/services/services_section.dart';

List sections = [
  "Home",
  "About Me",
  "Services",
  "Why Choose",
  "Portfolio",
  "Process",
  "Testimonials",
  "Contact Me"
];

List<Widget> sectionWidgets = [
  const HomeSection(),
  const AboutSection(),
  const ServicesSection(),
  const Footer(),
  // SectionWidget(child: TextWidget("why")),
  // SectionWidget(child: TextWidget("portfolio")),
  // SectionWidget(child: TextWidget("process")),
  // SectionWidget(child: TextWidget("testimonials")),
  // SectionWidget(child: TextWidget("contact")),
];
