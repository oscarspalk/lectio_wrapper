import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';

part 'homework.freezed.dart';
part 'homework.g.dart';

@freezed
class Homework with _$Homework {
  factory Homework(
      {required DateTime dato,
      required CalendarEvent activity,
      required String note}) = _Homework;

  factory Homework.fromJson(Map<String, dynamic> json) =>
      _$HomeworkFromJson(json);
}
