class Week {
  List<Day> days;
  Week(this.days);
}

class Day {
  List<String> informations;
  List<CalenderEvent> events;
  String date;
  Day(this.informations, this.events, this.date);
}

class CalenderEvent {
  String status;
  String title;
  String team;
  String teacher;
  String room;
  String link;
  DateTime start;
  DateTime end;

  CalenderEvent(this.status, this.title, this.team, this.teacher, this.room,
      this.link, this.start, this.end);
}
