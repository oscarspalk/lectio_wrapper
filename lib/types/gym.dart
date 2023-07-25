import 'package:freezed_annotation/freezed_annotation.dart';

part 'gym.freezed.dart';

@freezed
class Gym with _$Gym {
  factory Gym({required String name, required int id}) = _Gym;
}
