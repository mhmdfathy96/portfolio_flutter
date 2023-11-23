import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_template/src/core/model/home_screen_model.dart';
import 'package:project_template/src/core/providers/scroll_provider.dart';
import 'package:project_template/src/core/utils/app_date_extension.dart';
import 'package:project_template/src/core/utils/app_utils.dart';
import 'package:project_template/src/core/widgets/logo_widget.dart';
import 'package:project_template/src/features/home/presentation/widgets/footer.dart';
import 'package:project_template/src/features/home/presentation/widgets/header/header.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../core/utils/app_globals.dart';
import '../../../../core/utils/app_logger.dart';
import '../widgets/header/header_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool exit = false;
  DateTime selectedDay = DateTime.now().getDateTime();
  int selectedScreen = 1;
  List<HomeScreenModel> homeScreens = [];
  ScrollProvider? _scrollProvider;

  @override
  void didChangeDependencies() {
    _scrollProvider ??= Provider.of<ScrollProvider>(context);
    super.didChangeDependencies();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _scrollProvider!.init();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      drawer: Drawer(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 32.h,
            ),
            const LogoWidget(),
            SizedBox(
              height: 32.h,
            ),
            ...sections
                .map((e) => Padding(
                      padding: EdgeInsets.only(top: 16.h),
                      child: HeaderButton(text: e, index: sections.indexOf(e)),
                    ))
                .toList()
          ]),
        ),
      ),
      body: Stack(
        children: [
          ScrollablePositionedList.builder(
            itemCount: sectionWidgets.length,
            shrinkWrap: true,
            itemScrollController: _scrollProvider!.itemScrollController,
            scrollOffsetController: _scrollProvider!.scrollOffsetController,
            itemPositionsListener: _scrollProvider!.itemPositionsListener,
            scrollOffsetListener: _scrollProvider!.scrollOffsetListener,
            itemBuilder: (context, index) => sectionWidgets[index],
          ),
          const Header(),
        ],
      ),
    );
  }
}
