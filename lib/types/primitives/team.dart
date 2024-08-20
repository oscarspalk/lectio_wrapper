import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.freezed.dart';
part 'team.g.dart';

@freezed
class Team with _$Team {
  factory Team(
      {required String name,
      required String id,
      required String displayName}) = _Team;

  factory Team.fromJson(Map<String, Object?> json) => _$TeamFromJson(json);
}

@freezed
class ModuleStatistics with _$ModuleStatistics {
  factory ModuleStatistics(
      {required double deviation,
      required int total,
      required int hosted,
      required int normal}) = _ModuleStatistics;
}
