import 'package:lectio_wrapper/lectio_wrapper.dart';

class Homework {
  DateTime dato;
  CalendarEvent activity;
  String note;
  String classLink;
  int module;
  Homework(this.activity, this.classLink, this.dato, this.note, this.module);
}
