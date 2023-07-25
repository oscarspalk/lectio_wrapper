import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lectio_wrapper/lectio/student.dart';

part 'class.freezed.dart';

@freezed
class Class with _$Class {
  factory Class(
      {required String id,
      required String name,
      required List<Student> students}) = _Class;
}

@freezed
class ClassRef with _$ClassRef {
  factory ClassRef({required String name, required String id}) = _ClassRef;
}
