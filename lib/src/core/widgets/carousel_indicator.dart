// import 'package:carousel_slider/carousel_controller.dart';
// import 'package:flutter/material.dart';

// import '../utils/app_colors.dart';

// class CarouselIndicator extends StatelessWidget {
//   final int itemCount;
//   final int currentIndex;
//   final CarouselController carouselController;
//   final ValueChanged<int> onChange;

//   const CarouselIndicator({super.key, required this.itemCount, required this.currentIndex, required this.carouselController, required this.onChange});

//   double get height{
//     return 10;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: List.generate(itemCount, (index) {
//         return InkWell(
//           onTap: (){
//             carouselController.animateToPage(index);
//             onChange(index);
//           },
//           child: Container(
//             width: currentIndex==index?4*height:height,
//             height: height,
//             margin: const EdgeInsets.symmetric(horizontal: 4.0),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(5),
//               color: currentIndex == index
//                   ? AppColors.primary
//                   : AppColors.grey3,
//             ),
//           ),
//         );
//       }),
//     );
//   }
// }
