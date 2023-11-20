import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:project_template/src/core/api/dio_consumer.dart';

import 'package:project_template/src/injector_container.dart' as di;

import 'app_localizations_setup.dart';

class AppLocalizations {
  final BuildContext? context;
  AppLocalizations({this.context});

  static String translate(String key,
          {List<String>? args, Map<String, String>? namedArgs}) =>
      key.tr(
        args: args,
        namedArgs: namedArgs,
      );

  bool isEnLocale() => context!.locale.languageCode == 'en';

  Future<void> changeLang(String languageCode) async {
    await context!.setLocale(Locale(languageCode));
    updateDioHeader();
  }

  updateDioHeader() {
    MyLocales myLocale = MyLocales.fromLanguageCode(currentLocale);
    di.getIt<DioConsumer>().addAcceptLanguage(myLocale.acceptLanguage);
  }

  String get currentLocale => context!.locale.languageCode;
}
