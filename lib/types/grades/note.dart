import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lectio_wrapper/types/grades/subject.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';

part 'note.freezed.dart';

@freezed
class GradeNote with _$GradeNote {
  factory GradeNote(
      {required DateTime registered,
      required Team team,
      required Subject subject,
      required String note,
      required String gradeType,
      int? grade,
      required String teacherInitials}) = _GradeNote;
}
