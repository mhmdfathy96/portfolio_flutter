// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:project_template/src/core/utils/media_query_values.dart';

// import 'carousel_indicator.dart';

// class CarouselWidget extends StatefulWidget {
//   final List<Widget> children;

//   const CarouselWidget({Key? key, required this.children}) : super(key: key);

//   @override
//   State<CarouselWidget> createState() => _CarouselWidgetState();
// }

// class _CarouselWidgetState extends State<CarouselWidget> {
//   int current = 0;
//   final CarouselController controller = CarouselController();

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         CarouselSlider(
//             items: widget.children,
//             carouselController: controller,
            
//             options: CarouselOptions(
//               // height: context.height * .29,
//               aspectRatio: 2/1.07,
//               autoPlay: true,
//               pauseAutoPlayOnManualNavigate: true,
//               onPageChanged: (index, reason) {
//                 setState(() {
//                   current = index;
//                 });
//               },
//             )),
//         SizedBox(
//           height: context.width * .03,
//         ),
//         CarouselIndicator(
//           itemCount: widget.children.length,
//           currentIndex: current,
//           carouselController: controller,
//           onChange: (value) {
//             setState(() {
//               current = value;
//             });
//           },
//         ),
//       ],
//     );
//   }
// }
