// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homework.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Homework _$HomeworkFromJson(Map<String, dynamic> json) => Homework(
      dato: DateTime.parse(json['dato'] as String),
      activity:
          CalendarEvent.fromJson(json['activity'] as Map<String, dynamic>),
      note: json['note'] as String,
    );

Map<String, dynamic> _$HomeworkToJson(Homework instance) => <String, dynamic>{
      'dato': instance.dato.toIso8601String(),
      'activity': instance.activity.toJson(),
      'note': instance.note,
    };

_$HomeworkImpl _$$HomeworkImplFromJson(Map<String, dynamic> json) =>
    _$HomeworkImpl(
      dato: DateTime.parse(json['dato'] as String),
      activity:
          CalendarEvent.fromJson(json['activity'] as Map<String, dynamic>),
      note: json['note'] as String,
    );

Map<String, dynamic> _$$HomeworkImplToJson(_$HomeworkImpl instance) =>
    <String, dynamic>{
      'dato': instance.dato.toIso8601String(),
      'activity': instance.activity.toJson(),
      'note': instance.note,
    };
