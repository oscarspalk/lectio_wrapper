// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DayTime _$$_DayTimeFromJson(Map<String, dynamic> json) => _$_DayTime(
      hour: json['hour'] as int,
      minute: json['minute'] as int,
    );

Map<String, dynamic> _$$_DayTimeToJson(_$_DayTime instance) =>
    <String, dynamic>{
      'hour': instance.hour,
      'minute': instance.minute,
    };

_$_ModulRange _$$_ModulRangeFromJson(Map<String, dynamic> json) =>
    _$_ModulRange(
      number: json['number'] as int,
      start: DayTime.fromJson(json['start'] as Map<String, dynamic>),
      end: DayTime.fromJson(json['end'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ModulRangeToJson(_$_ModulRange instance) =>
    <String, dynamic>{
      'number': instance.number,
      'start': instance.start,
      'end': instance.end,
    };

_$_Week _$$_WeekFromJson(Map<String, dynamic> json) => _$_Week(
      days: (json['days'] as List<dynamic>)
          .map((e) => Day.fromJson(e as Map<String, dynamic>))
          .toList(),
      weekNum: json['weekNum'] as int,
      modulRanges: (json['modulRanges'] as List<dynamic>)
          .map((e) => ModulRange.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WeekToJson(_$_Week instance) => <String, dynamic>{
      'days': instance.days,
      'weekNum': instance.weekNum,
      'modulRanges': instance.modulRanges,
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
      index: (json['index'] as num?)?.toDouble(),
      teachers:
          (json['teachers'] as List<dynamic>).map((e) => e as String).toList(),
      room: json['room'] as String,
      id: json['id'] as String,
      day: DateTime.parse(json['day'] as String),
      note: json['note'] as String,
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
      hasHomework: json['hasHomework'] as bool,
      hasNote: json['hasNote'] as bool,
      teacherObjs: (json['teacherObjs'] as List<dynamic>)
          .map((e) => MetaDataEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      teamObjs: (json['teamObjs'] as List<dynamic>)
          .map((e) => MetaDataEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CalendarEventToJson(_$_CalendarEvent instance) =>
    <String, dynamic>{
      'type': _$CalendarEventTypeEnumMap[instance.type]!,
      'status': instance.status,
      'title': instance.title,
      'team': instance.team,
      'index': instance.index,
      'teachers': instance.teachers,
      'room': instance.room,
      'id': instance.id,
      'day': instance.day.toIso8601String(),
      'note': instance.note,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'hasHomework': instance.hasHomework,
      'hasNote': instance.hasNote,
      'teacherObjs': instance.teacherObjs,
      'teamObjs': instance.teamObjs,
    };

const _$CalendarEventTypeEnumMap = {
  CalendarEventType.test: 'test',
  CalendarEventType.regular: 'regular',
  CalendarEventType.private: 'private',
};
