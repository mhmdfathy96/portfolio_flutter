import 'package:flutter/material.dart';

import '../../../../../core/utils/app_utils.dart';
import '../../../../../core/widgets/logo_widget.dart';
import 'header_button.dart';

class HeaderWeb extends StatelessWidget {
  const HeaderWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const LogoWidget(),
        Row(
          children: [
            ...sections
                .map(
                  (e) => HeaderButton(text: e,index: sections.indexOf(e),),
                )
                .toList(),
          ],
        )
      ],
    );
  }
}
