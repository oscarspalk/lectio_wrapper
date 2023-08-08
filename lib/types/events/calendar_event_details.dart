class CalendarEventDetails {}

class RegularCalendarEventDetails extends CalendarEventDetails {
  RegularCalendarEventDetails(this.note, this.htmlContent);
  String? note;
  String htmlContent;
  //List<Content> content;
}

class PrivateCalendarEventDetails extends CalendarEventDetails {
  final String content;
  final String title;
  final DateTime start;
  final DateTime end;
  PrivateCalendarEventDetails(this.content, this.end, this.start, this.title);
}

class Content {
  List<Content> children;
  Content(this.children);
}

class Link extends Content {
  String text;
  String href;
  Link(this.text, this.href, super.children);
}

class Header extends Content {
  String text;
  Header(this.text, super.children);
}

class Image extends Content {
  String src;
  Image(this.src, super.children);
}

class Paragraph extends Content {
  String text;
  Paragraph(this.text, super.children);
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
