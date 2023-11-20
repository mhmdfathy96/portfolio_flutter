
import 'package:flutter/material.dart';
import 'package:project_template/src/core/model/home_screen_model.dart';
import 'package:project_template/src/core/utils/app_date_extension.dart';
import 'package:project_template/src/core/utils/app_text_styles.dart';
import 'package:project_template/src/core/responsive/media_query_values.dart';
import 'package:project_template/src/core/widgets/animated_widget.dart';
import 'package:project_template/src/core/widgets/button_widget.dart';
import 'package:project_template/translations/locale_keys.g.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/app_dialogs.dart';
import '../../../../core/widgets/localization_widget.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets_manager.dart';
import '../widgets/drawer_row.dart';
import '../../../../core/widgets/svg_button.dart';
import '../../../../core/widgets/text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool exit = false;
  DateTime selectedDay = DateTime.now().getDateTime();
  int selectedScreen = 1;
  List<HomeScreenModel> homeScreens = [
  ];

  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        toolbarHeight: context.height * .1,
        elevation: 0,
        titleSpacing: 0,
        actions: [
          selectedScreen != 0
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: ButtonWidget(
                      child: TextWidget(
                        LocaleKeys.addEvent,
                        textStyle: AppTextStyle.p2
                            .copyWith(color: AppColors.neutral100),
                      ),
                      onPressed: () {
                      }),
                ),
        ],
        title: Row(
          children: [
            TextWidget(
              homeScreens[selectedScreen].name,
              textStyle: AppTextStyle.h7.copyWith(color: AppColors.neutral800),
            ),
          ],
        ),
        leading: SVGButton(
          svgPath: Assets.imagesSvgBarsOutline,
          color: AppColors.neutral800,
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
      ),
      drawer: Drawer(
        // backgroundColor: AppColors.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: context.height * .1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SVGButton(
                      svgPath: Assets.imagesSvgLogoHorizontal,
                    ),
                    SVGButton(
                      svgPath: Assets.imagesSvgProfile,
                      onPressed: () async {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: context.height * .02,
                ),
                SizedBox(
                  height: context.height * .45,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: homeScreens.map((e) {
                      int index = homeScreens.indexOf(e);

                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: DrawerRow(
                          label: e.name,
                          svgPath: e.svgPath,
                          isSelected: index == selectedScreen,
                          onPressed: () {
                            setState(() {
                              selectedScreen = index;
                            });
                            _scaffoldKey.currentState!.closeDrawer();
                          },
                          end:
                              index != 2 ? null : const LoadingAnimatedWidget(),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(
                  height: context.height * .15,
                ),
                const Row(
                  children: [
                    LocalizationWidget(),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ),
      ),
      body: WillPopScope(
        onWillPop: () async {
          await AppDialogs.areYouSureToExit(
              context: context,
              onPressed: () {
                setState(() {
                  exit = true;
                });
              });
          return exit;
        },
        child: homeScreens[selectedScreen].screen,
      ),
    );
  }
}
