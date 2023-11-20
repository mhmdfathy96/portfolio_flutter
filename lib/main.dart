
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_template/src/injector_container.dart' as di;
import 'app.dart';
import 'src/bloc_observer.dart';
import 'src/config/locale/app_localizations_setup.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppLocalizationsSetup.ensureInitialized();
  await di.init();
  Bloc.observer = AppBlocObserver();
  runApp( AppLocalizationsSetup.initLocalization(
      app: const MyApp(),
    ),
  );
}
