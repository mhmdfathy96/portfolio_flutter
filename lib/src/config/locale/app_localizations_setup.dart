import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:project_template/translations/locale_keys.g.dart';

enum MyLocales {
  en;

  factory MyLocales.fromLanguageCode(String languageCode) {
    switch (languageCode) {
      case "en-us":
        return MyLocales.en;
      default:
        return MyLocales.en;
    }
  }

  String get languageCode {
    switch (this) {
      case MyLocales.en:
        return "en";
    }
  }

  String get acceptLanguage {
    switch (this) {
      case MyLocales.en:
        return "en";
    }
  }

  String get getString {
    switch (this) {
      case MyLocales.en:
        return LocaleKeys.english;
    }
  }
}

class AppLocalizationsSetup {
  static List<Locale> supportedLocales =
      MyLocales.values.map((locale) => Locale(locale.languageCode)).toList();

  // static const List<String> supportedLocalesLanguageCodes = [
  //   'en',
  //   'ko',
  // ];

  static ensureInitialized() async =>
      await EasyLocalization.ensureInitialized();

  static EasyLocalization initLocalization({required Widget app}) =>
      EasyLocalization(
        supportedLocales: AppLocalizationsSetup.supportedLocales,

        ///json files path
        path: "assets/translations",

        /// if chosen lang not available fall back to this Locale
        fallbackLocale: const Locale('en'),
        useOnlyLangCode: true,
        child: app,
      );
}
