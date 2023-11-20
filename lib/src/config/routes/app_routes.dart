import 'package:flutter/material.dart';
import 'package:project_template/src/core/responsive/responsive.dart';

import '../../core/screens/no_internet_connection_screen.dart';
import '../../core/utils/app_strings.dart';

import '../../features/home/presentation/screens/home_screen.dart';

class Routes {
  static const String initialRoute = "/";
  static const String noInternetConnection = "/noInternetConnection";
}

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (_) => const Responsive(
            mobile: Scaffold(
              body: Center(child: Text("Loading...")),
            ),
            tablet: Scaffold(
              body: Center(child: Text("Loading...")),
            ),
            web: Scaffold(
              body: Center(child: Text("Loading...")),
            ),
          ),
        );
      case Routes.noInternetConnection:
        return MaterialPageRoute(
          builder: (context) => NoInternetConnectionScreen(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.initialRoute);
            },
          ),
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
