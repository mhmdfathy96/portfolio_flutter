import 'package:flutter/material.dart';
import 'package:project_template/src/core/responsive/media_query_values.dart';

import '../utils/app_dialogs.dart';
import '../utils/app_text_styles.dart';
import 'bottom_sheet_header.dart';
import 'button_widget.dart';
import 'card_with_title.dart';
import 'check_box_list_tile_widget.dart';
import 'confirm_widget.dart';
import 'text_widget.dart';

class MultiMonthPicker extends StatefulWidget {
  final VoidCallback onPressed;
  final ValueChanged<List<int>> onChanged;
  final List<int> selectedMonths;
  const MultiMonthPicker({
    super.key,
    required this.onPressed,
    required this.onChanged,
    required this.selectedMonths,
  });

  @override
  State<MultiMonthPicker> createState() => _MultiMonthPickerState();
}

class _MultiMonthPickerState extends State<MultiMonthPicker> {
  List<int> selectedMonths = [DateTime.now().month];

  @override
  void initState() {
    selectedMonths = widget.selectedMonths;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MultiMonthPicker oldWidget) {
    selectedMonths = widget.selectedMonths;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () async {
          await AppDialogs.showBottomSheet(
            context: context,
            isDismissible: false,
            enableDrag: false,
            child: StatefulBuilder(builder: (context, setState) {
              return Row(
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
                        CheckboxListTileWidget(
                          title: "تحديد كل الشهور",
                          value: selectedMonths.length == 12,
                          onChanged: (value) {
                            setState(() {
                              if (value) {
                                selectedMonths.clear();
                                selectedMonths.addAll(List<int>.generate(
                                    12, (index) => index + 1));
                              } else {
                                selectedMonths.clear();
                              }
                              // _allSelected=!_allSelected;
                            });
                          },
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
                              // backgroundColor:
                              //     selectedMonths.contains(index + 1)
                              //         ? AppColors.secondary
                              //         : AppColors.grey3,
                              onPressed: () async {
                                final int month = index + 1;
                                setState(() {
                                  if (selectedMonths.contains(month)) {
                                    selectedMonths.remove(month);
                                  } else {
                                    selectedMonths.add(month);
                                  }
                                });
                              },
                              child: TextWidget((index + 1).toString()),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.all(context.authScreenPadding),
                          child: ConfirmWidget(
                            label: "تأكيد",
                            onPressed: () {
                              if (selectedMonths.isEmpty) {
                                selectedMonths.add(DateTime.now().month);
                              }
                              widget.onChanged(selectedMonths);
                              widget.onPressed.call();
                              if (mounted) {
                                Navigator.of(context).pop();
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
          );
        },
        child: CardWithTitle(
          title: "الشهر",
          content: widget.selectedMonths.toString(),
        ),
      ),
    );
  }
}
