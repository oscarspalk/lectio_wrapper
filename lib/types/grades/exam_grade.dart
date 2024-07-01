import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lectio_wrapper/types/grades/grade.dart';

part 'exam_grade.freezed.dart';

@freezed
class ExamGrade with _$ExamGrade {
  factory ExamGrade({required String ects, required Grade grade}) = _ExamGrade;
}
