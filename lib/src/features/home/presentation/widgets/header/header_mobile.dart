import 'package:flutter/material.dart';
import 'package:project_template/src/core/widgets/icon_button_widget.dart';

import '../../../../../core/utils/app_globals.dart';
import '../../../../../core/widgets/logo_widget.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const LogoWidget(),
        IconButtonWidget(
            onPressed: () {
              globalKey.currentState!.openDrawer();
            },
            iconData: Icons.menu),
      ],
    );
  }
}
