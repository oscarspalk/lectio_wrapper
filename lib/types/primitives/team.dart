class Team {
  final String name;
  final String id;
  final String displayName;
  Team(this.name, this.id, this.displayName);
}

class ModuleStatistics {
  double deviation;
  int total;
  int normal;
  ModuleStatistics(this.deviation, this.total, this.normal);
}
