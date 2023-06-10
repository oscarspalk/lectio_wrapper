import 'package:lectio_wrapper/types/primitives/team.dart';

class AbsenceEntry {
  Team team;
  RegularEntryData regular;
  AssignmentEntryData assignment;
  AbsenceEntry(this.team, this.regular, this.assignment);
}

class RegularEntryData {
  double currentPercent;
  AbsenceFraction currentModules;
  double finalPercent;
  AbsenceFraction finalModules;
  RegularEntryData(this.currentPercent, this.currentModules, this.finalPercent,
      this.finalModules);
}

class AssignmentEntryData {
  double currentPercent;
  AbsenceFraction currentStudentTime;
  double finalPercent;
  AbsenceFraction finalStudentTime;
  AssignmentEntryData(this.currentPercent, this.currentStudentTime,
      this.finalPercent, this.finalStudentTime);
}

class AbsenceFraction {
  double current;
  double total;
  AbsenceFraction(this.current, this.total);
}
