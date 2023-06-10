import 'package:lectio_wrapper/types/grades/subject.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';

class GradeRow {
  Team team;
  Subject subject;
  int? firstStandpunkt;
  int? secondStandpunkt;
  int? finalYearGrade;
  int? internalTest;
  int? yearGrade;
  int? examGrade;

  GradeRow(this.team, this.subject,
      {this.firstStandpunkt,
      this.secondStandpunkt,
      this.internalTest,
      this.examGrade,
      this.finalYearGrade,
      this.yearGrade});
}
