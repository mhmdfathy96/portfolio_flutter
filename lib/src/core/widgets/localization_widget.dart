import 'package:flutter/material.dart';
import 'package:project_template/src/config/locale/app_localizations_setup.dart';

import '../../config/locale/app_localizations.dart';
import '../../config/routes/app_routes.dart';
import 'drop_down_widget.dart';
import 'text_widget.dart';

class LocalizationWidget extends StatelessWidget {
  const LocalizationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalizations appLocalizations =
        AppLocalizations(context: context);

    return Expanded(
      child: DropdownWidget(
        selectedIndex: MyLocales.values.indexOf(
            MyLocales.fromLanguageCode(appLocalizations.currentLocale)),
        models: MyLocales.values,
        widgets: MyLocales.values
            .map(
              (e) => TextWidget(e.getString),
            )
            .toList(),
        onChange: (value) async {
          if (value != null) {
            await appLocalizations
                .changeLang(MyLocales.values[value].languageCode);
            if (context.mounted) {
              Navigator.of(context).popUntil((route) => false);
            }
            if (context.mounted) {
              // Navigator.of(context).pushNamed(Routes.homeScreen);
            }
            // if (context.mounted) {
            //   await AppDialogs.showAlertDialog(
            //     context: context,
            //     message: LocaleKeys.restartApp,
            //     barrierDismissible: false,
            //   );
            // }
          }
        },
      ),
    );
  }
}
