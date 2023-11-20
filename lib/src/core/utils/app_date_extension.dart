import 'package:flutter/material.dart';

extension DateTimeExtension on DateTime {
  DateTime getDateTime(
      {int? thisYear, int? thisMonth, int? thisDay, TimeOfDay? timeOfDay}) {
    timeOfDay = timeOfDay ?? const TimeOfDay(hour: 0, minute: 0);
    return DateTime.utc(thisYear ?? year, thisMonth ?? month, thisDay ?? day,
        timeOfDay.hour, timeOfDay.minute);
  }

  DateTime toMyLocal({bool withTime = false}) {
    final DateTime currentLocal =
        DateTime.now().getDateTime(timeOfDay: TimeOfDay.now());
    final DateTime currentUtc = DateTime.now().toUtc();
    Duration difference = currentUtc.difference(currentLocal);
    final minutes = difference.inMinutes;
    final roundedMinutes = (minutes / 15).round() * 15;
    final DateTime localDateTime = subtract(
      Duration(
        minutes: roundedMinutes,
      ),
    );
    return localDateTime.getDateTime(
      timeOfDay: withTime
          ? TimeOfDay(hour: localDateTime.hour, minute: localDateTime.minute)
          : null,
    );
  }

  String toYearMonth() {
    return toIso8601String().substring(0, 7);
  }
}
