import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lectio_wrapper/types/message/meta/meta.dart';
import 'package:lectio_wrapper/types/primitives/file.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';

part 'assignment.freezed.dart';
part 'assignment.g.dart';

@freezed
class Assignment with _$Assignment {
  factory Assignment(
      {required List<File> testFiles,
      required String id,
      required String title,
      required String note,
      required Team team,
      required String grading,
      required MetaDataEntry responsible,
      required double hours,
      required DateTime deadline,
      required String grade,
      required double absence,
      required String gradeNote,
      required List<AssignmentEntry> entries}) = _Assignment;
  factory Assignment.fromJson(Map<String, Object?> json) =>
      _$AssignmentFromJson(json);
}

@freezed
class AssignmentEntry with _$AssignmentEntry {
  factory AssignmentEntry(
      {required DateTime time,
      required MetaDataEntry user,
      required String note,
      required File resource}) = _AssignmentEntry;

  factory AssignmentEntry.fromJson(Map<String, Object?> json) =>
      _$AssignmentEntryFromJson(json);
}

@freezed
class AssignmentRef with _$AssignmentRef {
  factory AssignmentRef(
      {required int week,
      required String team,
      required String title,
      required DateTime deadline,
      required double studentTime,
      required String status,
      required String absence,
      required String taskNote,
      required String id}) = _AssignmentRef;

  factory AssignmentRef.fromJson(Map<String, Object?> json) =>
      _$AssignmentRefFromJson(json);
}
