import 'package:flutter/material.dart';
import 'package:project_template/src/core/responsive/media_query_values.dart';

class DefaultPadding extends StatelessWidget {
  final Widget child;

  const DefaultPadding({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: context.authScreenPadding, vertical: context.screenPadding),
      child: child,
    );
  }
}
