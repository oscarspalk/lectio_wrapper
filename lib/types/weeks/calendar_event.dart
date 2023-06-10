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

class CalendarEvent {
  String status;
  String title;
  String team;
  String teacher;
  String room;
  String id;
  DateTime start;
  DateTime end;

  CalendarEvent(this.status, this.title, this.team, this.teacher, this.room,
      this.id, this.start, this.end);
}
