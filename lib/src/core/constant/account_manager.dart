import 'dart:async';
import 'dart:developer' as log;

import 'package:flutter/services.dart';

class AccountManagerPlugin {
  // static const MethodChannel _channel = MethodChannel('account_manager_plugin');
  static const _channel = MethodChannel('account_info');

  List<String> accountInfo = [];

  static Future getAccounts() async {
    try {
      return await _channel.invokeMethod('getAccounts');
    } on PlatformException catch (e) {
      log.log("Error: $e");
    }
  }

  /// Obtains all mail accounts registered in the user's device
  static Future<List<dynamic>> get getMailsAccounts async {
    final List<dynamic> accounts =
        await _channel.invokeMethod('getMailsAccounts');
    return accounts;
  }
}
