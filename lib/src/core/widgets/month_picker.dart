import 'package:flutter/material.dart';
import 'package:project_template/src/core/responsive/media_query_values.dart';

import '../utils/app_dialogs.dart';
import '../utils/app_text_styles.dart';
import 'bottom_sheet_header.dart';
import 'button_widget.dart';
import 'card_with_title.dart';
import 'text_widget.dart';

class MonthPicker extends StatefulWidget {
  final VoidCallback onPressed;
  final ValueChanged<int> onChanged;
  final String selectedMonthName;
  final int selectedMonth;
  const MonthPicker({
    super.key,
    required this.onPressed,
    required this.onChanged,
    required this.selectedMonthName,
    required this.selectedMonth,
  });

  @override
  State<MonthPicker> createState() => _MonthPickerState();
}

class _MonthPickerState extends State<MonthPicker> {
  int selectedMonth = DateTime.now().month;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () async {
          await AppDialogs.showBottomSheet(
            context: context,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const BottomSheetHeader(),
                      TextWidget(
                        "من فضلك اختر الشهر",
                        textStyle: AppTextStyle.p1,
                      ),
                      GridView.builder(
                        padding: EdgeInsets.all(context.authScreenPadding),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 50,
                                mainAxisSpacing: 50,
                                mainAxisExtent: 35),
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 12,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ButtonWidget(
                            // backgroundColor: AppColors.secondary,
                            onPressed: () async {
                              setState(() {
                                selectedMonth = index + 1;
                              });
                              widget.onChanged(selectedMonth);
                              widget.onPressed.call();
                              if (mounted) {
                                Navigator.of(context).pop();
                              }
                            },
                            child: TextWidget((index + 1).toString()),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        child: CardWithTitle(
          title: "الشهر",
          content: widget.selectedMonth.toString(),
        ),
      ),
    );
  }
}
