import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject.freezed.dart';

enum SubjectTypes { written, oral }

extension SubjectTypesExtension on SubjectTypes {
  String get name {
    switch (this) {
      case SubjectTypes.written:
        return "Skriftlig";
      case SubjectTypes.oral:
        return "Mundtlig";
    }
  }
}

@freezed
class Subject with _$Subject {
  factory Subject({required String name, required SubjectTypes type}) =
      _Subject;
}
