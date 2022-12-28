import 'package:lectio_wrapper/types/detail.dart';

class Homework {
  String dato;
  String activity;
  String note;
  List<Detail> homework;
  String classLink;

  Homework(this.activity, this.classLink, this.dato, this.homework, this.note);
}
