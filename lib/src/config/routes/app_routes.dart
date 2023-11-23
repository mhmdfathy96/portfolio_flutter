import 'package:flutter/material.dart';
import 'package:project_template/src/core/responsive/responsive.dart';
import 'package:project_template/src/features/splash/presentation/screens/splash_screen.dart';

import '../../core/screens/no_internet_connection_screen.dart';
import '../../core/utils/app_strings.dart';

import '../../features/home/presentation/screens/home_screen.dart';

class Routes {
  static const String initialRoute = "/";
  static const String noInternetConnection = "/noInternetConnection";
  static const String homeScreen = "/homeScreen";
}

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.noInternetConnection:
        return MaterialPageRoute(
          builder: (context) => NoInternetConnectionScreen(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.initialRoute);
            },
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: ((context) => const Scaffold(
            body: Center(
              child: Text(AppStrings.noRouteFound),
            ),
          )),
    );
  }
}
