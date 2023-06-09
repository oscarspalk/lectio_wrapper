import 'package:lectio_wrapper/types/weeks/calendar_event.dart';

class AbsenceCauseEntry {
  String id;
  double absence;
  AbsenceCauses cause;
  String expandedCause;
  String note;
  DateTime registered;
  CalendarEvent module;
  bool missingCause;
  AbsenceCauseEntry(this.id, this.absence, this.cause, this.expandedCause,
      this.note, this.registered, this.module, this.missingCause);
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
