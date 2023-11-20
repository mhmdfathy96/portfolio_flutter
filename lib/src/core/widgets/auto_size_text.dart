import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AutoSizedTextWidget extends StatelessWidget {
  final String text;
  final double? maxWidth;
  final TextStyle? textStyle;
  final double minFontSize;
  const AutoSizedTextWidget(
      {super.key,
      required this.text,
      this.maxWidth,
      this.textStyle,
      this.minFontSize = 12});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: maxWidth,
      child: AutoSizeText(
        text,
        maxLines: 1,
        style: textStyle,
        minFontSize: minFontSize,
      ),
    );
  }
}
