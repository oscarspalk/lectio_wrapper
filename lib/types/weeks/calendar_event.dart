class Week {
  List<Day> days;
  int weekNum;
  Week(this.days, this.weekNum);
}

class Day {
  List<String> informations;
  List<CalendarEvent> events;
  DateTime date;
  Day(this.informations, this.events, this.date);
}

enum CalendarEventType { test, regular, private }

class CalendarEvent {
  CalendarEventType type;
  String status;
  String title;
  String team;
  String teacher;
  String room;
  String id;
  String note;
  DateTime start;
  DateTime end;

  CalendarEvent(this.status, this.title, this.team, this.teacher, this.room,
      this.id, this.start, this.end,
      {this.type = CalendarEventType.regular, required this.note});
}
