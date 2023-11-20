import 'package:flutter/material.dart';

import '../utils/app_text_styles.dart';
import 'text_widget.dart';

class RadioListTileWidget extends StatefulWidget {
  final List<String> options;
  final ValueChanged<String> onChanged;

  const RadioListTileWidget(
      {Key? key, required this.options, required this.onChanged})
      : super(key: key);

  @override
  State<RadioListTileWidget> createState() => _RadioListTileWidgetState();
}

class _RadioListTileWidgetState extends State<RadioListTileWidget> {
  late String selected ;
  @override
  void initState() {
    selected=widget.options.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: widget.options
          .map(
            (option) => Expanded(
              child: RadioListTile<String>(
                contentPadding: EdgeInsets.zero,
                value: option,
                groupValue: selected,
                title: Row(
                  children: [
                    Expanded(
                      child: TextWidget(option, textStyle: AppTextStyle.p4),
                    ),
                  ],
                ),
                onChanged: (value) {
                  setState(() {
                    selected = value!;
                  });
                  widget.onChanged(value!);
                },
              ),
            ),
          )
          .toList(),
    );
  }
}
