import 'package:flutter/material.dart';
import 'package:project_template/src/core/responsive/responsive.dart';
import 'package:project_template/src/features/home/presentation/widgets/services/services_mobile.dart';
import 'package:project_template/src/features/home/presentation/widgets/services/services_web.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(mobile: ServicesMobile(), web: ServicesWeb());
  }
}
