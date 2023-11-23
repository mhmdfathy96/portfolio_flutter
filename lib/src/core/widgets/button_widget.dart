import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final double? borderRadius;
  final BorderSide borderSide;
  final Color? shadowColor;

  const ButtonWidget(
      {Key? key,
      required this.child,
      required this.onPressed,
      this.backgroundColor,
      this.borderRadius,
      this.borderSide = BorderSide.none,
      this.shadowColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        shadowColor: MaterialStateProperty.all(shadowColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 12.w),
            side: borderSide,
          ),
        ),
      ),
      child: child,
    );
  }
}
// Container(
//     width: 389,
//     height: 56,
//     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
//     decoration: ShapeDecoration(
//         color: Color(0xFF235481),
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//         ),
//     ),
//     child: Row(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//             Text(
//                 'Login',
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontFamily: 'Segoe UI',
//                     fontWeight: FontWeight.w400,
//                 ),
//             ),
//         ],
//     ),
// )