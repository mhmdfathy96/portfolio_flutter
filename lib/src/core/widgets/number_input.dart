import 'package:flutter/material.dart';
import 'package:project_template/src/core/responsive/media_query_values.dart';

import 'icon_button_widget.dart';

class NumberInputWithUpDown extends StatefulWidget {
  final String label;
  final double initialValue;
  final double minValue;
  final double maxValue;
  final ValueChanged<double> onChange;

  const NumberInputWithUpDown({
    super.key,
    required this.label,
    required this.initialValue,
    required this.minValue,
    required this.maxValue,
    required this.onChange,
  });

  @override
  State<NumberInputWithUpDown> createState() => _NumberInputWithUpDownState();
}

class _NumberInputWithUpDownState extends State<NumberInputWithUpDown> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        TextEditingController(text: widget.initialValue.toStringAsFixed(1));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * .15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: context.width * .5, child: Text(widget.label)),
          SizedBox(
            width: context.width * .3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextFormField(
                textAlign: TextAlign.center,
                controller: _controller,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    double doubleValue = double.tryParse(value) ?? 0;
                    if (doubleValue < widget.minValue) {
                      doubleValue = widget.minValue;
                      _controller.text = doubleValue.toString();
                    } else if (doubleValue > widget.maxValue) {
                      doubleValue = widget.maxValue;
                      _controller.text = doubleValue.toString();
                    } 
                    // _controller.value = _controller.value.copyWith(
                    //   text: doubleValue.toStringAsFixed(1),
                    //   selection: TextSelection.collapsed(offset: value.length),
                    // );
                    widget.onChange(doubleValue);
                  }
                },
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButtonWidget(
                iconData: Icons.arrow_drop_up,
                onPressed: () {
                  double currentValue = double.parse(_controller.text);
                  if (currentValue < widget.maxValue) {
                    setState(() {
                      currentValue += .1;
                      _controller.text = currentValue.toStringAsFixed(1);
                    });
                    widget.onChange(currentValue);
                  }
                },
              ),
              IconButtonWidget(
                iconData: Icons.arrow_drop_down,
                onPressed: () {
                  double currentValue = double.parse(_controller.text);
                  if (currentValue > widget.minValue) {
                    setState(() {
                      currentValue -= .1;
                      _controller.text = currentValue.toStringAsFixed(1);
                    });
                    widget.onChange(currentValue);
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
