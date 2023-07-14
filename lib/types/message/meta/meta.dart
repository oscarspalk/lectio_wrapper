class MessageMetaData {
  List<MetaDataEntry> favorites;
  List<MetaDataEntry> groups;
  List<MetaDataEntry> students;
  List<MetaDataEntry> teams;
  List<MetaDataEntry> teachers;
  MessageMetaData(
      this.favorites, this.groups, this.students, this.teams, this.teachers);
}

class MetaDataEntry {
  String id;
  String name;
  MetaDataEntry(this.id, this.name);
}
