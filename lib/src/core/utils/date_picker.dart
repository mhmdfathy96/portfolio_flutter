import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DatePicker {
  final BuildContext? context;

  DatePicker({this.context});
  static Future<DateTime?> pickDate({
    required BuildContext context,
    DateTime? initialDate,
    DateTime? firstDate,
    DateTime? lastDate,
    String? helpText,
  }) async {
    initialDate ??= DateTime.now();
    firstDate =firstDate?? DateTime.now().subtract(const Duration(days: 100000));
    lastDate =lastDate?? DateTime.now().add(const Duration(days: 100000));
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
      helpText: helpText,
    );
    return pickedDate;
  }

  static Future<TimeOfDay?> pickTime({
    required BuildContext context,
    TimeOfDay? initialTime,
    String? helpText,
  }) async {
    initialTime ??= TimeOfDay.now();
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
      helpText: helpText,
    );
    return pickedTime;
  }

  static DateTime readTimestamp(int microsecondsSinceEpoch) {
    return DateTime.fromMicrosecondsSinceEpoch(microsecondsSinceEpoch);
  }

  static String dateTime(
    DateTime dateTime,
  ) {
    return DateFormat.yMd().add_jm().format(dateTime);
  }

  String date(
    DateTime dateTime,
  ) {
    return DateFormat.yMMMM(context!.locale.languageCode).format(dateTime);
  }

  String fullDate(
    DateTime dateTime,
  ) {
    return DateFormat.yMMMMEEEEd(context!.locale.languageCode).format(dateTime);
  }

  String time(
    DateTime dateTime,
  ) {
    return DateFormat.jm(context!.locale.languageCode).format(dateTime);
  }

  String month(
    DateTime dateTime,
  ) {
    return DateFormat.MMM(context!.locale.languageCode).format(
      dateTime,
    );
  }

  String day(DateTime dateTime) {
    return DateFormat.E(context!.locale.languageCode).format(dateTime);
  }

  static Future<int> pickYear(BuildContext context,
      {DateTime? initialDate}) async {
    DateTime selectedDate = DateTime.now();
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Pick a year"),
          content: SizedBox(
            // Need to use container to add size constraint.
            width: 300,
            height: 300,
            child: YearPicker(
              firstDate: DateTime(DateTime.now().year - 100, 1),
              lastDate: DateTime(DateTime.now().year + 100, 1),
              initialDate: initialDate,
              selectedDate: initialDate ?? selectedDate,
              onChanged: (DateTime dateTime) {
                selectedDate = dateTime;
                // close the dialog when year is selected.
                Navigator.pop(context);
                // Do something with the dateTime selected.
                // Remember that you need to use dateTime.year to get the year
              },
            ),
          ),
        );
      },
    );
    return selectedDate.year;
  }
}
