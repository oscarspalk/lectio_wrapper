import 'package:lectio_wrapper/lectio/student.dart';

class Class {
  String id;
  String name;
  List<Student> students;

  Class(this.id, this.name, this.students);
}

class ClassRef {
  String name;
  String id;
  ClassRef(this.name, this.id);
}
