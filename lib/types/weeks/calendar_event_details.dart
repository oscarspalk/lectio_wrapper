class CalendarEventDetails {
  CalendarEventDetails(this.content, this.note);
  String? note;
  List<Content> content;
}

class Content {
  String? href;
  String content;
  String? note;
  Content(this.content, {this.href, this.note});
}
