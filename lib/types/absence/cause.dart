import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lectio_wrapper/types/weeks/calendar_event.dart';

part 'cause.freezed.dart';
part 'cause.g.dart';

@freezed
class AbsenceCauseEntry with _$AbsenceCauseEntry {
  factory AbsenceCauseEntry(
      {required String id,
      required double absence,
      AbsenceCauses? cause,
      required String expandedCause,
      required String note,
      required DateTime registered,
      required CalendarEvent module}) = _AbsenceCauseEntry;

  factory AbsenceCauseEntry.fromJson(Map<String, Object?> json) =>
      _$AbsenceCauseEntryFromJson(json);
}

enum AbsenceCauses { other, late, sick, schoolRelated, privateRelations }

extension AbsenceCauseTopic on AbsenceCauses {
  String get name {
    switch (this) {
      case AbsenceCauses.sick:
        return "Sygdom";
      case AbsenceCauses.other:
        return "Andet";
      case AbsenceCauses.late:
        return "Kom for sent";
      case AbsenceCauses.schoolRelated:
        return "Skolerelaterede aktiviteter";
      case AbsenceCauses.privateRelations:
        return "Private forhold";
      default:
        return "";
    }
  }
}
