import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lectio_wrapper/types/grades/subject.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';

part 'grade.freezed.dart';

@freezed
class Grade with _$Grade {
  factory Grade({required double weight, required int grade}) = _Grade;
}

@freezed
class GradeRow with _$GradeRow {
  factory GradeRow({
    required Team team,
    required Subject subject,
    Grade? firstStandpunkt,
    Grade? secondStandpunkt,
    Grade? finalYearGrade,
    Grade? internalTest,
    Grade? yearGrade,
    Grade? examGrade,
  }) = _GradeRow;
}
