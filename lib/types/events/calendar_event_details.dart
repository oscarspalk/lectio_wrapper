class CalendarEventDetails {}

class RegularCalendarEventDetails extends CalendarEventDetails {
  RegularCalendarEventDetails(this.content, this.note);
  String? note;
  List<Content> content;
}

class Content {
  String? href;
  String content;
  String? note;
  Content(this.content, {this.href, this.note});
}

class TestCalendarEventDetails extends CalendarEventDetails {
  List<String> teachersInitials;
  String room;
  TestStudent student;
  List<TestStudent> otherStudents;
  TestCalendarEventDetails(
      this.teachersInitials, this.room, this.student, this.otherStudents);
}

class TestStudent {
  int id;
  String name;
  DateTime testDate;
  DateTime testStart;
  DateTime testEnd;
  DateTime? preparingStart;
  TestStudent(this.id, this.name, this.testDate, this.testEnd, this.testStart,
      this.preparingStart);
}
