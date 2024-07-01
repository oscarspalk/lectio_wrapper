// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssignmentImpl _$$AssignmentImplFromJson(Map<String, dynamic> json) =>
    _$AssignmentImpl(
      testFiles: (json['testFiles'] as List<dynamic>)
          .map((e) => File.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String,
      title: json['title'] as String,
      note: json['note'] as String,
      team: Team.fromJson(json['team'] as Map<String, dynamic>),
      grading: json['grading'] as String,
      responsible:
          MetaDataEntry.fromJson(json['responsible'] as Map<String, dynamic>),
      hours: (json['hours'] as num).toDouble(),
      deadline: DateTime.parse(json['deadline'] as String),
      grade: json['grade'] as String,
      absence: (json['absence'] as num).toDouble(),
      gradeNote: json['gradeNote'] as String,
      entries: (json['entries'] as List<dynamic>)
          .map((e) => AssignmentEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AssignmentImplToJson(_$AssignmentImpl instance) =>
    <String, dynamic>{
      'testFiles': instance.testFiles.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'title': instance.title,
      'note': instance.note,
      'team': instance.team.toJson(),
      'grading': instance.grading,
      'responsible': instance.responsible.toJson(),
      'hours': instance.hours,
      'deadline': instance.deadline.toIso8601String(),
      'grade': instance.grade,
      'absence': instance.absence,
      'gradeNote': instance.gradeNote,
      'entries': instance.entries.map((e) => e.toJson()).toList(),
    };

_$AssignmentEntryImpl _$$AssignmentEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$AssignmentEntryImpl(
      time: DateTime.parse(json['time'] as String),
      user: MetaDataEntry.fromJson(json['user'] as Map<String, dynamic>),
      note: json['note'] as String,
      resource: File.fromJson(json['resource'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AssignmentEntryImplToJson(
        _$AssignmentEntryImpl instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'user': instance.user.toJson(),
      'note': instance.note,
      'resource': instance.resource.toJson(),
    };

_$AssignmentRefImpl _$$AssignmentRefImplFromJson(Map<String, dynamic> json) =>
    _$AssignmentRefImpl(
      week: (json['week'] as num).toInt(),
      team: json['team'] as String,
      title: json['title'] as String,
      deadline: DateTime.parse(json['deadline'] as String),
      studentTime: (json['studentTime'] as num).toDouble(),
      status: json['status'] as String,
      absence: json['absence'] as String,
      taskNote: json['taskNote'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$AssignmentRefImplToJson(_$AssignmentRefImpl instance) =>
    <String, dynamic>{
      'week': instance.week,
      'team': instance.team,
      'title': instance.title,
      'deadline': instance.deadline.toIso8601String(),
      'studentTime': instance.studentTime,
      'status': instance.status,
      'absence': instance.absence,
      'taskNote': instance.taskNote,
      'id': instance.id,
    };
