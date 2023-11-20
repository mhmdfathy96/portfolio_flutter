import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'src/config/locale/app_localizations_setup.dart';
import 'src/config/routes/app_routes.dart';
import 'src/config/themes/app_theme.dart';
import 'src/core/utils/app_strings.dart';
import 'src/features/home/presentation/bloc/home_cubit.dart';
import 'package:project_template/src/injector_container.dart' as di;
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.getIt<HomeCubit>(),
        ),
      ],
      child: MaterialApp(
        title: AppStrings.appName,
        locale: context.locale,
        localizationsDelegates: context.localizationDelegates,
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        onGenerateRoute: AppRoutes.onGenerateRoute,
        navigatorKey: navigatorKey,
        supportedLocales: AppLocalizationsSetup.supportedLocales,
      ),
    );
  }
}
