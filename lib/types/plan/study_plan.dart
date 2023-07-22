import 'package:lectio_wrapper/types/message/meta/meta.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';

class StudyTeamEntry {
  Team team;
  List<StudyPlanRef> entries;
  StudyTeamEntry(this.team, this.entries);
}

class StudyPlanRef {
  String title;
  DateTime start;
  DateTime end;
  String id;
  StudyPlanRef(this.title, this.start, this.end, this.id);
}

class StudyPlanEntry {
  MetaDataEntry teacher;
  String description;
  StudyPlanEntry(this.teacher, this.description);
}
