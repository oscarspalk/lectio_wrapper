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

class Subject {
  String name;
  SubjectTypes type;
  Subject(this.name, this.type);
}
