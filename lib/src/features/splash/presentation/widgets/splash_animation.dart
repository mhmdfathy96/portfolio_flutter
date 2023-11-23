import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/utils/assets_manager.dart';

class SplashAnimation extends StatelessWidget {
  const SplashAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(Assets.imagesLottieSplashAnim);
  }
}