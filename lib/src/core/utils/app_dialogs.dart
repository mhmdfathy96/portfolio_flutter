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

  static Future areYouSureToLogout({
    required BuildContext context,
    required VoidCallback onPressed,
  }) async {
    await showCustomDialog(
        context: context,
        title: "",
        titleCentre: true,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.error100,
              ),
              child: SVGButton(
                svgPath: Assets.imagesSvgLogout,
                color: AppColors.error500,
                width: 30,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextWidget(
              LocaleKeys.logout,
              textStyle: AppTextStyle.h5,
            ),
            const SizedBox(
              height: 16,
            ),
            TextWidget(
              LocaleKeys.sureToLogout,
              textStyle: AppTextStyle.p1.copyWith(
                color: AppColors.neutral500,
              ),
            ),
          ],
        ),
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
                    LocaleKeys.logout,
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

  static Future showCustomToast({
    required BuildContext context,
    String header = "",
    required String message,
    bool valid = true,
    ToastGravity gravity = ToastGravity.BOTTOM,
    int toastDuration = 2,
  }) async {
    FToast fToast = FToast();
    fToast.init(context);
    fToast.showToast(
      child: ContainerWidget(
        padding: EdgeInsets.zero,
        height: context.height * .12,
        color: AppColors.neutral100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SVGButton(
                  svgPath: valid
                      ? Assets.imagesSvgCheckCircleOutline
                      : Assets.imagesSvgXCircleOutline,
                  color: valid ? AppColors.success500 : AppColors.error500,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextWidget(
                  header,
                  textStyle: AppTextStyle.p2.copyWith(
                    color: AppColors.neutral700,
                  ),
                ),
                TextWidget(
                  message,
                  textStyle: AppTextStyle.p1.copyWith(
                    color: AppColors.neutral400,
                  ),
                ),
                Container(
                  width: context.width * .2,
                  height: 5,
                  decoration: BoxDecoration(
                    color: AppColors.neutral300,
                    borderRadius: BorderRadius.circular(12),
                  ),
                )
              ],
            ),
            // const Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     SVGButton(svgPath: Assets.imagesSvgXOutline),
            //   ],
            // ),
          ],
        ),
      ),
      gravity: gravity,
      toastDuration: Duration(seconds: toastDuration),
    );
  }

  static dismissNotification() {
    FToast().removeCustomToast();
  }

  static Future showNotification({
    required BuildContext context,
    String header = "",
    required String message,
    VoidCallback? onTap,
    ToastGravity gravity = ToastGravity.TOP,
    int toastDuration = 5,
  }) async {
    FToast fToast = FToast();
    fToast.removeCustomToast();
    fToast.init(context);
    fToast.showToast(
      child: InkWell(
        onTap: onTap,
        child: ContainerWidget(
          padding: EdgeInsets.zero,
          height: context.height * .12,
          color: AppColors.primary500,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SVGButton(
                      svgPath: Assets.imagesSvgBellOutline,
                      color: AppColors.neutral100,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.neutral100,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            TextWidget(
                              header,
                              textStyle: AppTextStyle.p2.copyWith(
                                color: AppColors.neutral700,
                              ),
                            ),
                            IconButtonWidget(
                              onPressed: () {
                                dismissNotification();
                              },
                              iconData: Icons.close,
                              size: 30,
                              color: AppColors.error500,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            TextWidget(
                              message,
                              textStyle: AppTextStyle.p3.copyWith(
                                color: AppColors.neutral700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      gravity: gravity,
      toastDuration: Duration(seconds: toastDuration),
    );
  }

  static Future showNotifications({
    required BuildContext context,
    String header = "",
    required String message,
    VoidCallback? onTap,
  }) async {
    await showGeneralDialog(
      context: context,
      barrierLabel: "barrier",
      barrierDismissible: true,
      pageBuilder: (context, animation, secondaryAnimation) {
        return InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  width: 100,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.primary500,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SVGButton(
                        svgPath: Assets.imagesSvgBellOutline,
                        color: AppColors.neutral100,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.neutral100,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            TextWidget(
                              header,
                              textStyle: AppTextStyle.p2.copyWith(
                                color: AppColors.neutral700,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            TextWidget(
                              message,
                              textStyle: AppTextStyle.p2.copyWith(
                                color: AppColors.neutral700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 700),
      transitionBuilder: (context, anim1, anim2, child) {
        final curvedValue = Curves.easeInOut.transform(anim1.value) - 1.0;
        return Transform(
          transform: Matrix4.translationValues(curvedValue * -300, 0.0, 0.0),
          child: Opacity(
            opacity: anim1.value,
            child: SlideDialog(
              child: child,
            ),
          ),
        );
      },
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
