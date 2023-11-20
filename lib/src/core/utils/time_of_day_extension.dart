import 'package:flutter/material.dart';

extension TimeOfDayExtension on TimeOfDay {
  TimeOfDay add({int hour = 0, int minute = 0}) {
    return replacing(hour: this.hour + hour, minute: this.minute + minute);
  }

  TimeOfDay subtract({int hour = 0, int minute = 0}) {
    return replacing(hour: this.hour - hour, minute: this.minute - minute);
  }

  DateTime toDateTime({
    int? year,
    int? month,
    int? day,
  }) {
    return DateTime(year ?? 2023, month ?? 1, day ?? 1, hour, minute);
  }

  String toTimeString() {
    String strHour = hour.toString();
    String strMin = minute.toString();
    if (hour.toString().length == 1) {
      strHour = '0$hour';
    }
    if (minute.toString().length == 1) {
      strMin = '0$minute';
    }
    return "$strHour:$strMin:00";
  }

  TimeOfDay fromString(String time) {
    final divs = time.split(":");
    return TimeOfDay(hour: int.parse(divs[0]), minute: int.parse(divs[1]));
  }
}
