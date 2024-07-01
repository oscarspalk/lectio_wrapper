import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lectio_wrapper/types/grades/exam_grade.dart';

part 'exam_entry.freezed.dart';

@freezed
class ExamEntry with _$ExamEntry {
  factory ExamEntry(
      {ExamGrade? yearGrade,
      ExamGrade? examGrade,
      required String team}) = _ExamEntry;
}
