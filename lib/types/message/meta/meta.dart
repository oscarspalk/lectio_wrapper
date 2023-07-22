import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta.freezed.dart';

class MessageMetaData {
  List<MetaDataEntry> favorites;
  List<MetaDataEntry> groups;
  List<MetaDataEntry> students;
  List<MetaDataEntry> teams;
  List<MetaDataEntry> teachers;
  MessageMetaData(
      this.favorites, this.groups, this.students, this.teams, this.teachers);
}

@freezed
class MetaDataEntry with _$MetaDataEntry {
  factory MetaDataEntry(
      {required String id,
      required String name,
      String? classOrInitials}) = _MetaDataEntry;
}
