import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_template/src/config/locale/app_localizations.dart';
import 'package:project_template/src/core/responsive/media_query_values.dart';
import 'package:project_template/src/core/utils/app_colors.dart';
import 'package:project_template/src/core/utils/assets_manager.dart';
import 'package:project_template/src/core/widgets/svg_button.dart';
import 'package:project_template/src/features/splash/presentation/widgets/splash_animation.dart';

import '../../../../../../translations/locale_keys.g.dart';
import '../../../../config/routes/app_routes.dart';
import '../../../../core/widgets/logo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  // late final AnimationController _controller;
  // late final Animation<double> _scaleAnimation;
  Timer? _timer;
  bool readyToGoHome = false;

  // _initAnimation() {
  //   _controller = AnimationController(
  //     vsync: this,
  //     duration: const Duration(milliseconds: 1500),
  //   );
  //   _scaleAnimation = Tween<double>(begin: 20, end: 1).animate(_controller);
  //   _controller.forward().whenComplete(
  //       () async => BlocProvider.of<AuthCubit>(context).tryReLogin());
  // }

  _startTimer() async {
    _timer = Timer(const Duration(milliseconds: 1600), () async => _goNext());
  }

  _stopTimer() async {
    if (_timer != null) {
      _timer!.cancel();
    }
  }

  _goNext() {
    Navigator.of(context).pushReplacementNamed(Routes.homeScreen);
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
    // _initAnimation();
  }

  @override
  void dispose() {
    // _controller.dispose();
    _stopTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary500,
        body: const Center(
          child: SplashAnimation(),
        ));
  }
}
