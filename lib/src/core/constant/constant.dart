import 'package:flutter/material.dart';

import '../error/failures.dart';
import '../utils/app_strings.dart';

String mapFailureToString(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      return failure.props.first.toString();
    case CacheFailure:
      return failure.props.first.toString();
    default:
      return AppStrings.unexpectedFailure;
  }
}

double doubleFromController(TextEditingController textEditingController) {
  final value = textEditingController.text.trim().replaceAll(",", "");
  return double.tryParse(value) ?? 0;
}

String? userAgent;
// Platform messages are asynchronous, so we initialize in an async method.
Future<void> initPlatformState() async {
  // Platform messages may fail, so we use a try/catch PlatformException.
  try {
    // userAgent = FkUserAgent.webViewUserAgent;
    debugPrint(userAgent);
  // ignore: empty_catches
  } catch (e) {}
}
