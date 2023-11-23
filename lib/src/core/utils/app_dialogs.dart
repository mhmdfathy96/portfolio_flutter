import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_template/src/core/utils/assets_manager.dart';
import 'package:project_template/src/core/responsive/media_query_values.dart';
import 'package:project_template/src/core/widgets/container_widget.dart';
import 'package:project_template/src/core/widgets/icon_button_widget.dart';
import 'package:project_template/src/core/widgets/svg_button.dart';

import '../../../translations/locale_keys.g.dart';
import '../../config/locale/app_localizations.dart';
import '../widgets/button_widget.dart';
import '../widgets/slide_dialog.dart';
import '../widgets/text_widget.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class AppDialogs {
  static Future showAlertDialog(
      {required BuildContext context,
      required String message,
      Widget? widget,
      bool barrierDismissible = true}) async {
    await showDialog(
        context: context,
        barrierDismissible: barrierDismissible,
        builder: (_) => AlertDialog(
              title: Column(
                children: [
                  TextWidget(message, textAlign: TextAlign.center),
                  if (widget != null)
                    const SizedBox(
                      height: 16,
                    ),
                  if (widget != null) widget,
                ],
              ),
              actions: [
                if (barrierDismissible)
                  Center(
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text(AppLocalizations.translate(LocaleKeys.ok)),
                    ),
                  ),
              ],
            ));
  }

  static Future areYouSure({
    required BuildContext context,
    required String title,
    String? arg,
    bool titleCentre = true,
    required VoidCallback onPressed,
  }) async {
    await showCustomDialog(
        context: context,
        title: title,
        args: arg == null ? null : [arg],
        titleCentre: titleCentre,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonWidget(
                  child: TextWidget(
                    LocaleKeys.ok,
                    textStyle:
                        AppTextStyle.p1.copyWith(color: AppColors.neutral100),
                  ),
                  onPressed: () async {
                    onPressed.call();
                    if (context.mounted) {
                      Navigator.of(context).pop();
                    }
                  }),
              ButtonWidget(
                  child: TextWidget(
                    LocaleKeys.cancel,
                    textStyle:
                        AppTextStyle.p1.copyWith(color: AppColors.neutral100),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ],
          ),
        ]);
  }

  static Future areYouSureToExit({
    required BuildContext context,
    required VoidCallback onPressed,
  }) async {
    await showCustomDialog(
        context: context,
        title: LocaleKeys.areYouSureToExit,
        titleCentre: true,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonWidget(
                  backgroundColor: AppColors.error500,
                  onPressed: () async {
                    onPressed.call();
                    if (context.mounted) {
                      Navigator.of(context).pop();
                    }
                  },
                  child: TextWidget(
                    LocaleKeys.ok,
                    textStyle:
                        AppTextStyle.p2.copyWith(color: AppColors.neutral100),
                  )),
              ButtonWidget(
                  backgroundColor: AppColors.neutral100,
                  borderSide: BorderSide(color: AppColors.primary500),
                  child: TextWidget(
                    LocaleKeys.cancel,
                    textStyle:
                        AppTextStyle.p2.copyWith(color: AppColors.primary500),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ],
          ),
        ]);
  }

  static Future showCustomDialog({
    required BuildContext context,
    required String title,
    List<String>? args,
    bool titleCentre = false,
    List<Widget>? actions,
    Widget? content,
    EdgeInsets insetPadding =
        const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
    bool barrierDismissible = true,
  }) async {
    await showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (_) => AlertDialog(
        insetPadding: insetPadding,
        title: titleCentre
            ? Center(
                child: TextWidget(
                  title,
                  args: args,
                  textAlign: TextAlign.center,
                ),
              )
            : TextWidget(
                title,
                args: args,
                textAlign: TextAlign.center,
              ),
        actions: actions,
        content: content,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }

  static Future areYouSureToDelete({
    required BuildContext context,
    String title = LocaleKeys.suretodelete,
    String? arg,
    required VoidCallback onPressed,
  }) async {
    await showCustomDialog(
        context: context,
        title: title,
        args: arg == null ? null : [arg],
        titleCentre: true,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonWidget(
                  backgroundColor: AppColors.error500,
                  child: TextWidget(
                    LocaleKeys.ok,
                    textStyle: AppTextStyle.p4,
                  ),
                  onPressed: () async {
                    onPressed.call();
                    if (context.mounted) {
                      Navigator.of(context).pop();
                    }
                  }),
              ButtonWidget(
                  child: TextWidget(
                    LocaleKeys.cancel,
                    textStyle: AppTextStyle.p4,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ],
          ),
        ]);
  }

  static Future showToast({
    required String message,
    ToastGravity gravity = ToastGravity.BOTTOM,
  }) async {
    await Fluttertoast.showToast(
      msg: message,
      gravity: gravity,
      toastLength: Toast.LENGTH_LONG,
    );
  }

 
 
  static Future showBottomSheet({
    required BuildContext context,
    required Widget child,
    bool enableDrag = true,
    bool isDismissible = true,
  }) async {
    await showModalBottomSheet(
      context: context,
      enableDrag: enableDrag,
      useSafeArea: true,
      isScrollControlled: true,
      isDismissible: isDismissible,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      ),
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return child;
        });
      },
    );
  }
}
