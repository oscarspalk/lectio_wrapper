import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:intl/intl.dart';
import 'package:lectio_wrapper/types/events/calendar_event_details.dart';

DateFormat testDateFormat = DateFormat("dd/MM-yy");
DateFormat testTimeFormat = DateFormat("HH:mm");

Future<CalendarEventDetails> extractCalendarEventDetails(
    BeautifulSoup soup) async {
  Bs4Element? testElement =
      soup.find("*", id: 'm_Content_LectioDetailIslandProevehold_pa');
  if (testElement != null) {
    return extractTestEventDetails(testElement);
  }
  return extractRegularEventDetails(soup);
}

TestCalendarEventDetails extractTestEventDetails(Bs4Element element) {
  List<Bs4Element> tables = element.findAll("table");
  Bs4Element infoTable = tables.first;
  Bs4Element studentTable = tables.last;
  List<TestStudent> allStudents = [];
  bool hasPrep = studentTable.children[0].children[0].children[4].text
      .toLowerCase()
      .startsWith("forb.");
  List<Bs4Element> studentRows = studentTable.children[0].children;
  studentRows.removeAt(0);
  for (var studentRow in studentRows) {
    allStudents.add(extractTestStudent(studentRow, hasPrep));
  }
  var studentId = int.parse(infoTable.children[0].children[6].children[1].text);
  TestStudent student = allStudents.firstWhere(
    (element) => element.id == studentId,
  );
  var room = infoTable.children[0].children[4].children[1].text;
  String teacherString = infoTable.children[0].children[0].children[3].text;
  List<String> teachers = teacherString.split("\n").map((e) {
    return e.split(" - ")[0];
  }).toList();
  return TestCalendarEventDetails(teachers, room, student, allStudents);
}

TestStudent extractTestStudent(Bs4Element row, bool hasPrep) {
  var id = int.parse(row.children[0].text.split(" ")[1]);
  var name = row.children[1].text;
  DateTime? preparingStart;
  var testDate = testDateFormat.parse(row.children[3].text);
  var add = hasPrep ? 1 : 0;
  if (hasPrep) {
    preparingStart = testTimeFormat.parse(row.children[4].text);
  }
  var testEnd = testTimeFormat.parse(row.children[4 + add].text);
  var testStart = testTimeFormat.parse(row.children[5 + add].text);
  return TestStudent(id, name, testDate, testEnd, testStart, preparingStart);
}

RegularCalendarEventDetails extractRegularEventDetails(BeautifulSoup soup) {
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
      return RegularCalendarEventDetails([], note);
    }
    List<Bs4Element> homework = contentContainer.findAll("article");
    for (var homeworkPiece in homework) {
      contents.add(extractHomeworkArticle(homeworkPiece));
    }
  }

  return RegularCalendarEventDetails(contents, note);
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
