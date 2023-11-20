import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData iconData;
  final Color? color;
  final double? size;

  const IconButtonWidget(
      {Key? key,
      required this.onPressed,
      required this.iconData,
      this.color,
      this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: color,
      onPressed: onPressed,
      icon: Icon(
        iconData,
        size: size,
      ),
      padding: EdgeInsets.zero,
      splashRadius: 15,
      constraints: const BoxConstraints(),
    );
  }
}
