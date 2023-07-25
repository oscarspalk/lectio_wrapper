import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.freezed.dart';

@freezed
class Team with _$Team {
  factory Team(
      {required String name,
      required String id,
      required String displayName}) = _Team;
}

@freezed
class ModuleStatistics with _$ModuleStatistics {
  factory ModuleStatistics(
      {required double deviation,
      required int total,
      required int normal}) = _ModuleStatistics;
}
