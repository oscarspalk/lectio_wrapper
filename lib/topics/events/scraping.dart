import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/types/calendar_event_details.dart';

Future<CalendarEventDetails> extractCalendarEventDetails(
    BeautifulSoup soup) async {
  List<Content> contents = [];
  String? note;
  var contentContainer =
      soup.find("*", id: "s_m_Content_Content_tocAndToolbar_inlineHomeworkDiv");
  var noteContainer =
      soup.find("*", id: 's_m_Content_Content_tocAndToolbar_ActNoteTB_tb');
  if (noteContainer != null) {
    note = noteContainer.text;
  }
  if (contentContainer!.children.isNotEmpty) {
    if (contentContainer.children[0].text ==
        "Aktiviteten har ikke noget indhold.") {
      return CalendarEventDetails([], note);
    }
    List<Bs4Element> homework = contentContainer.findAll("article");
    for (var homeworkPiece in homework) {
      contents.add(extractHomeworkArticle(homeworkPiece));
    }
  }

  return CalendarEventDetails(contents, note);
}

Content extractHomeworkArticle(Bs4Element element) {
  var contentHeader = element.children[0];
  if (contentHeader.children.isEmpty) {
    return Content(contentHeader.text);
  }
  if (contentHeader.children[0].name == "a") {
    var linkElement = contentHeader.children[0];
    String? note;
    if (element.children.length > 1) {
      note = element.children[1].children[0].text;
    }
    return Content(linkElement.text,
        href: linkElement.getAttrValue("href"), note: note);
  }
  return Content("");
}
