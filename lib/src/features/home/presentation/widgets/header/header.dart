import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_template/src/core/providers/scroll_provider.dart';
import 'package:project_template/src/core/responsive/responsive.dart';
import 'package:project_template/src/core/widgets/section_widget.dart';
import 'package:project_template/src/features/home/presentation/widgets/header/header_mobile.dart';
import 'package:project_template/src/features/home/presentation/widgets/header/header_web.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/screen_size.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
      height: navHeight,
      color: Provider.of<ScrollProvider>(context).isOnTop
          ? null
          : AppColors.primary500,
      child: const Responsive(mobile: HeaderMobile(), web: HeaderWeb()),
    );
  }
}
