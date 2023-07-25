import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lectio_wrapper/types/message/meta/meta.dart';
import 'package:lectio_wrapper/types/primitives/file.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';

part 'assignment.freezed.dart';

@freezed
class Assignment {
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
      required List<AssignmentEntry> entries}) = _Assignment;
}

@freezed
class AssignmentEntry with _$AssignmentEntry {
  factory AssignmentEntry(
      {required DateTime time,
      required MetaDataEntry user,
      required String note,
      required File resource}) = _AssignmentEntry;
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
}
