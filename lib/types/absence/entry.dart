import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';

part 'entry.freezed.dart';

@freezed
class AbsenceEntry with _$AbsenceEntry {
  factory AbsenceEntry(
      {required Team team,
      required RegularEntryData regular,
      required AssignmentEntryData assignment}) = _AbsenceEntry;
}

@freezed
class RegularEntryData with _$RegularEntryData {
  factory RegularEntryData(
      {required double currentPercent,
      required AbsenceFraction currentModules,
      required double finalPercent,
      required AbsenceFraction finalModules}) = _RegularEntryData;
}

@freezed
class AssignmentEntryData with _$AssignmentEntryData {
  factory AssignmentEntryData(
      {required double currentPercent,
      required AbsenceFraction currentStudentTime,
      required double finalPercent,
      required AbsenceFraction finalStudentTime}) = _AssignmentEntryData;
}

@freezed
class AbsenceFraction with _$AbsenceFraction {
  factory AbsenceFraction({required double current, required double total}) =
      _AbsenceFraction;
}
