
import 'package:flutter/material.dart';
import 'package:project_template/src/core/responsive/media_query_values.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget web;
  const Responsive(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.web});

  static bool isMobile(BuildContext context) => context.width <= 500;
  static bool isTablet(BuildContext context) =>
      context.width > 500 && context.width > 1024;
  static bool isWeb(BuildContext context) => context.width >= 1024;

  @override
  Widget build(BuildContext context) {
    if (isWeb(context)) {
      return web;
    } else if (isTablet(context)) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
