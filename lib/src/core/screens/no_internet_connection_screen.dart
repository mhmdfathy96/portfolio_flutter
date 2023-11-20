import 'package:flutter/material.dart';

import '../../../translations/locale_keys.g.dart';
import '../../config/locale/app_localizations.dart';
import '../utils/app_colors.dart';

class NoInternetConnectionScreen extends StatelessWidget {
  final VoidCallback? onPressed;
  const NoInternetConnectionScreen({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.warning_amber_rounded,
                color: AppColors.primary500, size: 150),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                AppLocalizations.translate(LocaleKeys.somethingWentWrong),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: Text(
                AppLocalizations.translate(LocaleKeys.tryAgain),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              )),
              onPressed: onPressed,
              child: Text(
                AppLocalizations.translate(LocaleKeys.reloadScreen),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
