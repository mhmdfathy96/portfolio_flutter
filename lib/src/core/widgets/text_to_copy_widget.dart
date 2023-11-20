import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../translations/locale_keys.g.dart';
import '../constant/url_launcher.dart';
import '../utils/app_dialogs.dart';
import 'button_widget.dart';
import 'text_widget.dart';

class TextToCopyWidget extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final bool isPhone;
  final bool isEmail;

  const TextToCopyWidget(
      {Key? key,
      required this.text,
      this.textStyle,
      this.textAlign,
      this.isPhone = false,  this.isEmail=false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if(isEmail){
          UrlLauncherHelper.mail(text);
        }
        if (isPhone) {
          return await AppDialogs.showCustomDialog(
            context: context,
            title: LocaleKeys.wannaCall,
            args: [text],
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonWidget(
                  onPressed: () async {
                    UrlLauncherHelper.phone(text);
                    Navigator.of(context).pop();
                  },
                  child: const TextWidget(LocaleKeys.ok),
                ),
                ButtonWidget(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child:
                      const TextWidget(LocaleKeys.cancel),
                ),
              ],
            ),
          );
        }
      },
      onLongPress: () async {
        await Clipboard.setData(ClipboardData(text: text));
        await AppDialogs.showToast(
          message: LocaleKeys.copiedSuccessfully,
        );
        // copied successfully
      },
      child: TextWidget(
        text,
        textStyle: textStyle,
        textAlign: textAlign,
      ),
    );
  }
}
