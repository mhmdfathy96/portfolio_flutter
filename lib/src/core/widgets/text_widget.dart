import 'package:flutter/material.dart';

import '../../config/locale/app_localizations.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final List<String>? args;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final int? maxLines;
  const TextWidget(this.text,
      {Key? key,
      this.textStyle,
      this.textAlign,
      this.args,
      this.maxLines,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppLocalizations.translate(text,
          args: args == null
              ? null
              : args!.map((e) => AppLocalizations.translate(e)).toList()),
      style: textStyle,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
