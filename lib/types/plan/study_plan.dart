import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lectio_wrapper/types/message/meta/meta.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';

part 'study_plan.freezed.dart';

@freezed
class StudyTeamEntry with _$StudyTeamEntry {
  factory StudyTeamEntry(
      {required Team team,
      required List<StudyPlanRef> entries}) = _StudyTeamEntry;
}

@freezed
class StudyPlanRef with _$StudyPlanRef {
  factory StudyPlanRef(
      {required String title,
      required DateTime start,
      required DateTime end,
      required String id}) = _StudyPlanRef;
}

@freezed
class StudyPlanEntry with _$StudyPlanEntry {
  factory StudyPlanEntry(
      {required MetaDataEntry teacher,
      required String description}) = _StudyPlanEntry;
}
