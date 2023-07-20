import 'package:intl/intl.dart';
import 'package:lectio_wrapper/topics/messages/scraping.dart';

DateFormat format1 = DateFormat("d/M-y");
DateFormat format2 = DateFormat("d/M");
DateTime parseLectioDate(String date) {
  List<DateTime?> formats = [
    formatOne(date),
    formatTwo(date),
    formatThird(date),
    formatFourth(date),
    formatFive(date)
  ];
  return formats.firstWhere((element) => element != null)!;
}

DateTime? formatOne(String date) {
  try {
    return format1.parse(date);
  } on FormatException catch (_) {
    return null;
  }
}

DateTime? formatTwo(String date) {
  DateTime? maybeTime;
  try {
    List<String> times = date.split(" ");
    maybeTime = format2.parse(times[1]);
    maybeTime = maybeTime.copyWith(year: DateTime.now().year);
    return maybeTime;
  } catch (_) {
    return maybeTime;
  }
}

DateTime? formatThird(String date) {
  DateTime? maybeTime;
  try {
    maybeTime = DateFormat("HH:mm").parse(date);
    var now = DateTime.now();
    maybeTime =
        maybeTime.copyWith(year: now.year, month: now.month, day: now.day);
    return maybeTime;
  } catch (_) {
    return maybeTime;
  }
}

DateTime? formatFourth(String date) {
  DateTime? maybeTime;
  try {
    List<String> splittedTimes = date.split(" ");
    int weekday =
        weekdays.indexWhere((element) => element.startsWith(splittedTimes[0])) +
            1;
    maybeTime = DateFormat("HH:mm").parse(splittedTimes[1]);
    var now = DateTime.now();
    int weekdayDifference = now.weekday - weekday;
    var realDate = now.subtract(Duration(days: weekdayDifference));
    maybeTime = maybeTime.copyWith(
        year: realDate.year, month: realDate.month, day: realDate.day);
    return maybeTime;
  } catch (_) {
    return maybeTime;
  }
}

DateTime? formatFive(String date) {
  DateTime? maybeTime;
  try {
    List<String> splittedTimes = date.split(" ");
    int weekday =
        weekdays.indexWhere((element) => element.startsWith(splittedTimes[0])) +
            1;
    maybeTime = DateFormat("dd/MM-yy").parse(splittedTimes[1]);
    var now = DateTime.now();
    int weekdayDifference = now.weekday - weekday;
    var realDate = now.subtract(Duration(days: weekdayDifference));
    maybeTime = maybeTime.copyWith(
        year: realDate.year, month: realDate.month, day: realDate.day);
    return maybeTime;
  } catch (_) {
    return maybeTime;
  }
}
