// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalendarEvent _$CalendarEventFromJson(Map<String, dynamic> json) =>
    CalendarEvent(
      type: $enumDecode(_$CalendarEventTypeEnumMap, json['type']),
      status: json['status'] as String,
      title: json['title'] as String,
      team: json['team'] as String,
      teachers:
          (json['teachers'] as List<dynamic>).map((e) => e as String).toList(),
      room: json['room'] as String,
      id: json['id'] as String,
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

Map<String, dynamic> _$CalendarEventToJson(CalendarEvent instance) =>
    <String, dynamic>{
      'type': _$CalendarEventTypeEnumMap[instance.type]!,
      'status': instance.status,
      'title': instance.title,
      'team': instance.team,
      'teachers': instance.teachers,
      'room': instance.room,
      'id': instance.id,
      'note': instance.note,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'hasHomework': instance.hasHomework,
      'hasNote': instance.hasNote,
      'teacherObjs': instance.teacherObjs.map((e) => e.toJson()).toList(),
      'teamObjs': instance.teamObjs.map((e) => e.toJson()).toList(),
    };

const _$CalendarEventTypeEnumMap = {
  CalendarEventType.test: 'test',
  CalendarEventType.regular: 'regular',
  CalendarEventType.private: 'private',
};

_$DayTimeImpl _$$DayTimeImplFromJson(Map<String, dynamic> json) =>
    _$DayTimeImpl(
      hour: json['hour'] as int,
      minute: json['minute'] as int,
    );

Map<String, dynamic> _$$DayTimeImplToJson(_$DayTimeImpl instance) =>
    <String, dynamic>{
      'hour': instance.hour,
      'minute': instance.minute,
    };

_$ModulRangeImpl _$$ModulRangeImplFromJson(Map<String, dynamic> json) =>
    _$ModulRangeImpl(
      number: json['number'] as int,
      start: DayTime.fromJson(json['start'] as Map<String, dynamic>),
      end: DayTime.fromJson(json['end'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ModulRangeImplToJson(_$ModulRangeImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'start': instance.start.toJson(),
      'end': instance.end.toJson(),
    };

_$WeekImpl _$$WeekImplFromJson(Map<String, dynamic> json) => _$WeekImpl(
      days: (json['days'] as List<dynamic>)
          .map((e) => Day.fromJson(e as Map<String, dynamic>))
          .toList(),
      weekNum: json['weekNum'] as int,
      modulRanges: (json['modulRanges'] as List<dynamic>)
          .map((e) => ModulRange.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeekImplToJson(_$WeekImpl instance) =>
    <String, dynamic>{
      'days': instance.days.map((e) => e.toJson()).toList(),
      'weekNum': instance.weekNum,
      'modulRanges': instance.modulRanges.map((e) => e.toJson()).toList(),
    };

_$DayImpl _$$DayImplFromJson(Map<String, dynamic> json) => _$DayImpl(
      informations: (json['informations'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      events: (json['events'] as List<dynamic>)
          .map((e) => CalendarEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$DayImplToJson(_$DayImpl instance) => <String, dynamic>{
      'informations': instance.informations,
      'events': instance.events.map((e) => e.toJson()).toList(),
      'date': instance.date.toIso8601String(),
    };

_$CalendarEventImpl _$$CalendarEventImplFromJson(Map<String, dynamic> json) =>
    _$CalendarEventImpl(
      type: $enumDecode(_$CalendarEventTypeEnumMap, json['type']),
      status: json['status'] as String,
      title: json['title'] as String,
      team: json['team'] as String,
      teachers:
          (json['teachers'] as List<dynamic>).map((e) => e as String).toList(),
      room: json['room'] as String,
      id: json['id'] as String,
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

Map<String, dynamic> _$$CalendarEventImplToJson(_$CalendarEventImpl instance) =>
    <String, dynamic>{
      'type': _$CalendarEventTypeEnumMap[instance.type]!,
      'status': instance.status,
      'title': instance.title,
      'team': instance.team,
      'teachers': instance.teachers,
      'room': instance.room,
      'id': instance.id,
      'note': instance.note,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'hasHomework': instance.hasHomework,
      'hasNote': instance.hasNote,
      'teacherObjs': instance.teacherObjs.map((e) => e.toJson()).toList(),
      'teamObjs': instance.teamObjs.map((e) => e.toJson()).toList(),
    };
