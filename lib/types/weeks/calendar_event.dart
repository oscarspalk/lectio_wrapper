import 'package:freezed_annotation/freezed_annotation.dart';

import '../message/meta/meta.dart';

part 'calendar_event.freezed.dart';
part 'calendar_event.g.dart';

@freezed
class DayTime with _$DayTime {
  factory DayTime({required int hour, required int minute}) = _DayTime;

  factory DayTime.fromJson(Map<String, Object?> json) =>
      _$DayTimeFromJson(json);
}

@freezed
class ModulRange with _$ModulRange {
  factory ModulRange(
      {required int number,
      required DayTime start,
      required DayTime end}) = _ModulRange;

  factory ModulRange.fromJson(Map<String, Object?> json) =>
      _$ModulRangeFromJson(json);
}

@freezed
class Week with _$Week {
  factory Week(
      {required List<Day> days,
      required int weekNum,
      required List<ModulRange> modulRanges}) = _Week;
  factory Week.fromJson(Map<String, Object?> json) => _$WeekFromJson(json);
}

@freezed
class Day with _$Day {
  factory Day(
      {required List<String> informations,
      required List<CalendarEvent> events,
      required DateTime date}) = _Day;
  factory Day.fromJson(Map<String, Object?> json) => _$DayFromJson(json);
}

enum CalendarEventType { test, regular, private }

@freezed
class CalendarEvent with _$CalendarEvent {
  factory CalendarEvent(
      {required CalendarEventType type,
      required String status,
      required String title,
      required String team,
      required List<String> teachers,
      required String room,
      required String id,
      required String note,
      required DateTime start,
      required DateTime end,
      required bool hasHomework,
      required bool hasNote,
      required List<MetaDataEntry> teacherObjs,
      required List<MetaDataEntry> teamObjs}) = _CalendarEvent;

  factory CalendarEvent.fromJson(Map<String, Object?> json) =>
      _$CalendarEventFromJson(json);
}
