import 'package:flutter/material.dart';
import 'package:project_template/src/core/utils/app_colors.dart';

class LoadingAnimatedWidget extends StatefulWidget {
  final double? size;
  const LoadingAnimatedWidget({super.key,  this.size});
  @override
  State<LoadingAnimatedWidget> createState() => _LoadingAnimatedWidgetState();
}

class _LoadingAnimatedWidgetState extends State<LoadingAnimatedWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Create an AnimationController with a duration
    _controller = AnimationController(
      duration: const Duration(seconds: 2), // Adjust the duration as needed
      vsync: this,
    );

    // Create a curved animation for rotation
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    // Add a listener to update the UI when the animation changes
    _controller.addListener(() {
      setState(() {});
    });

    // Start the animation
    _controller.repeat();
  }

  @override
  void dispose() {
    // Dispose of the controller when it's no longer needed
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _animation.value * 2 * 3.1415927, // Rotate 360 degrees
      child: Icon(
        Icons.hourglass_empty, // You can choose any icon you like
        size: widget.size,
        color: AppColors.primary500,
      ),
    );
  }
}
