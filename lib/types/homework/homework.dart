import 'package:lectio_wrapper/lectio_wrapper.dart';

class Homework {
  DateTime dato;
  CalendarEvent activity;
  String note;
  List<Detail> homework;
  String classLink;

  Homework(this.activity, this.classLink, this.dato, this.homework, this.note);
}
