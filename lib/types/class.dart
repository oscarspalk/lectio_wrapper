import 'package:lectio_wrapper/lectio/student.dart';

class Class {
  String id;
  String name;
  List<Student> students;

  Class(this.id, this.name, this.students);
}

class ClassRef {
  String url;
  String name;
  ClassRef(this.url, this.name);
}
