import 'package:lectio_wrapper/types/grades/subject.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';

class GradeNote {
  DateTime registered;
  Team team;
  Subject subject;
  String note;
  String gradeType;
  int? grade;
  String teacherInitials;
  GradeNote(this.registered, this.team, this.subject, this.note, this.grade,
      this.gradeType, this.teacherInitials);
}
