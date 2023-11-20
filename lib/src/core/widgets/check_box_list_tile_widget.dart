import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';
import 'text_widget.dart';

class CheckboxListTileWidget extends StatefulWidget {
  final String title;
  final bool? value;
  final ValueChanged<bool> onChanged;

  const CheckboxListTileWidget(
      {Key? key, required this.title, required this.onChanged, this.value})
      : super(key: key);

  @override
  State<CheckboxListTileWidget> createState() => _CheckboxListTileWidgetState();
}

class _CheckboxListTileWidgetState extends State<CheckboxListTileWidget> {
  bool _selected = false;

  @override
  void initState() {
    if (widget.value != null) {
      setState(() {
        _selected = widget.value!;
      });
    }
    super.initState();
  }

  @override
  void didUpdateWidget(covariant CheckboxListTileWidget oldWidget) {
    if (widget.value != null) {
      setState(() {
        _selected = widget.value!;
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: TextWidget(
        widget.title,
        textStyle: AppTextStyle.p4,
      ),
      value: _selected,
      checkColor: AppColors.neutral500,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      side: BorderSide(
        color: AppColors.neutral300,
        width: .5,
      ),
      contentPadding: const EdgeInsets.only(left: 0),
      controlAffinity: ListTileControlAffinity.leading,
      visualDensity: VisualDensity.compact,
      onChanged: (value) {
        setState(() {
          _selected = !_selected;
          widget.onChanged(_selected);
        });
      },
    );
  }
}
