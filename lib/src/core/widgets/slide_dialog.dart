import 'package:flutter/material.dart';
import 'package:project_template/src/core/responsive/media_query_values.dart';

class SlideDialog extends StatefulWidget {
  final Widget child;

  const SlideDialog({
    super.key,
    required this.child,
  });

  @override
  State<SlideDialog> createState() => _SlideDialogState();
}

class _SlideDialogState extends State<SlideDialog> {
  var _initialPosition = 0.0;
  var _currentPosition = 0.0;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = context.width;
    final deviceHeight = context.height;

    return Padding(
      padding: EdgeInsets.only(
        top: deviceHeight / 5,
        bottom: deviceHeight / 1.5,
        left: context.authScreenPadding,
        right: context.authScreenPadding,
      ),
      child: MediaQuery.removeViewInsets(
        removeLeft: true,
        removeTop: true,
        removeRight: true,
        removeBottom: true,
        context: context,
        child: SizedBox(
          width: deviceWidth,
          height: deviceHeight / 3,
          child: Material(
            elevation: 24.0,
            type: MaterialType.card,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onHorizontalDragStart: _onHorizontalDragStart,
              onHorizontalDragUpdate: _onHorizontalDragUpdate,
              onHorizontalDragEnd: _onHorizontalDragEnd,
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }

  void _onHorizontalDragStart(DragStartDetails details) {
    setState(() {
      _initialPosition = details.globalPosition.dx;
    });
  }

  void _onHorizontalDragUpdate(DragUpdateDetails details) {
    setState(() {
      final temp = _currentPosition;
      _currentPosition = details.globalPosition.dy - _initialPosition;
      if (_currentPosition < 0) {
        _currentPosition = temp;
      }
    });
  }

  void _onHorizontalDragEnd(DragEndDetails details) {
    if (_currentPosition > 100.0) {
      Navigator.pop(context);
      return;
    }
    setState(() {
      _currentPosition = 0.0;
    });
  }
}
