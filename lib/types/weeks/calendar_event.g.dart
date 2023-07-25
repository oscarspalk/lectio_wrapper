// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Week _$$_WeekFromJson(Map<String, dynamic> json) => _$_Week(
      days: (json['days'] as List<dynamic>)
          .map((e) => Day.fromJson(e as Map<String, dynamic>))
          .toList(),
      weekNum: json['weekNum'] as int,
    );

Map<String, dynamic> _$$_WeekToJson(_$_Week instance) => <String, dynamic>{
      'days': instance.days,
      'weekNum': instance.weekNum,
    };

_$_Day _$$_DayFromJson(Map<String, dynamic> json) => _$_Day(
      informations: (json['informations'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      events: (json['events'] as List<dynamic>)
          .map((e) => CalendarEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_DayToJson(_$_Day instance) => <String, dynamic>{
      'informations': instance.informations,
      'events': instance.events,
      'date': instance.date.toIso8601String(),
    };

_$_CalendarEvent _$$_CalendarEventFromJson(Map<String, dynamic> json) =>
    _$_CalendarEvent(
      type: $enumDecode(_$CalendarEventTypeEnumMap, json['type']),
      status: json['status'] as String,
      title: json['title'] as String,
      team: json['team'] as String,
      teacher: json['teacher'] as String,
      room: json['room'] as String,
      id: json['id'] as String,
      note: json['note'] as String,
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
    );

Map<String, dynamic> _$$_CalendarEventToJson(_$_CalendarEvent instance) =>
    <String, dynamic>{
      'type': _$CalendarEventTypeEnumMap[instance.type]!,
      'status': instance.status,
      'title': instance.title,
      'team': instance.team,
      'teacher': instance.teacher,
      'room': instance.room,
      'id': instance.id,
      'note': instance.note,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
    };

const _$CalendarEventTypeEnumMap = {
  CalendarEventType.test: 'test',
  CalendarEventType.regular: 'regular',
  CalendarEventType.private: 'private',
};
