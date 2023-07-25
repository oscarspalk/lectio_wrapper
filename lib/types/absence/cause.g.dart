// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cause.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AbsenceCauseEntry _$$_AbsenceCauseEntryFromJson(Map<String, dynamic> json) =>
    _$_AbsenceCauseEntry(
      id: json['id'] as String,
      absence: (json['absence'] as num).toDouble(),
      cause: $enumDecodeNullable(_$AbsenceCausesEnumMap, json['cause']),
      expandedCause: json['expandedCause'] as String,
      note: json['note'] as String,
      registered: DateTime.parse(json['registered'] as String),
      module: CalendarEvent.fromJson(json['module'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AbsenceCauseEntryToJson(
        _$_AbsenceCauseEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'absence': instance.absence,
      'cause': _$AbsenceCausesEnumMap[instance.cause],
      'expandedCause': instance.expandedCause,
      'note': instance.note,
      'registered': instance.registered.toIso8601String(),
      'module': instance.module,
    };

const _$AbsenceCausesEnumMap = {
  AbsenceCauses.other: 'other',
  AbsenceCauses.late: 'late',
  AbsenceCauses.sick: 'sick',
  AbsenceCauses.schoolRelated: 'schoolRelated',
  AbsenceCauses.privateRelations: 'privateRelations',
};
