import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';

@freezed
class Room with _$Room {
  factory Room(
      {required String id,
      required String short,
      required String name}) = _Room;
}
