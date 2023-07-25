import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_event.freezed.dart';
part 'calendar_event.g.dart';

@freezed
class Week with _$Week {
  factory Week({required List<Day> days, required int weekNum}) = _Week;
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
  factory CalendarEvent({
    required CalendarEventType type,
    required String status,
    required String title,
    required String team,
    required String teacher,
    required String room,
    required String id,
    required String note,
    required DateTime start,
    required DateTime end,
  }) = _CalendarEvent;

  factory CalendarEvent.fromJson(Map<String, Object?> json) =>
      _$CalendarEventFromJson(json);
}
