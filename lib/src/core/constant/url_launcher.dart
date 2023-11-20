import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../utils/app_strings.dart';

class UrlLauncherHelper {
  static Future launch(Uri url) async {
    try {
      await launchUrl(url, mode: LaunchMode.externalNonBrowserApplication);
    } catch (exception) {
      throw 'Could not launch $url';
    }
  }

  static Future<bool> launchStringInAppView(String url) async {
    try {
      return await launchUrl(Uri.parse(url), mode: LaunchMode.inAppWebView);
      // return await launchUrlString(
      //   "$url?userToken=$userToken",
      //   mode: LaunchMode.inAppWebView,
      // );
    } catch (exception) {
      throw 'Could not launch $url';
    }
  }

  static Future mail(String mail) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: mail,
      query: 'subject=${AppStrings.appName}&body=', //add subject and body here
    );
    var url = params.toString();
    try {
      await launchUrlString(url);
    } catch (exception) {
      throw 'Could not launch $url';
    }
  }

  static Future phone(String phone) async {
    final Uri params = Uri(
      scheme: 'tel',
      path: phone,
    );
    var url = params.toString();
    try {
      await launchUrlString(url);
    } catch (exception) {
      throw 'Could not launch $url';
    }
  }

  static Future closeWebView() async {
    try {
      await closeInAppWebView();
    } catch (exception) {
      debugPrint(exception.toString());
    }
  }

  static Future update() async {
    if (Platform.isAndroid || Platform.isIOS) {
      final appId =
          Platform.isAndroid ? AppStrings.androidPackageName : AppStrings.appleAppID;
      final url = Uri.parse(
        Platform.isAndroid
            ? "https://play.google.com/store/apps/details?id=$appId"
            : "https://apps.apple.com/app/id$appId",
      );
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
  }
}
