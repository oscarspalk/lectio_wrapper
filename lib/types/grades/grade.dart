import 'package:lectio_wrapper/types/grades/subject.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';

class Grade {
  double weight;
  int grade;
  Grade(this.weight, this.grade);
}

class GradeRow {
  Team team;
  Subject subject;
  Grade? firstStandpunkt;
  Grade? secondStandpunkt;
  Grade? finalYearGrade;
  Grade? internalTest;
  Grade? yearGrade;
  Grade? examGrade;

  GradeRow(this.team, this.subject,
      {this.firstStandpunkt,
      this.secondStandpunkt,
      this.internalTest,
      this.examGrade,
      this.finalYearGrade,
      this.yearGrade});
}
