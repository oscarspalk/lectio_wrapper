import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:intl/intl.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/types/events/calendar_event_details.dart';

DateFormat testDateFormat = DateFormat("dd/MM-yy");
DateFormat testTimeFormat = DateFormat("HH:mm");

Future<CalendarEventDetails> extractCalendarEventDetails(
    BeautifulSoup soup, Student student, CalendarEvent event) async {
  Bs4Element? testElement =
      soup.find("*", id: 'm_Content_LectioDetailIslandProevehold_pa');
  Bs4Element? privateAppointmentElement =
      soup.find("*", id: 'm_Content_island1_pa');
  if (testElement != null) {
    return extractTestEventDetails(testElement, student);
  }
  if (privateAppointmentElement != null) {
    return extractPrivateDetails(privateAppointmentElement, event);
  }
  return extractRegularEventDetails(soup);
}

PrivateCalendarEventDetails extractPrivateDetails(
    Bs4Element content, CalendarEvent event) {
  var titleInput = content.find("*", id: 'm_Content_titelTextBox_tb')!.text;
  var commentInput = content.find("*", id: 'm_Content_commentTextBox_tb')!.text;
  return PrivateCalendarEventDetails(
      commentInput, event.end, event.start, titleInput);
}

TestCalendarEventDetails extractTestEventDetails(
    Bs4Element element, Student realStudent) {
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
  TestStudent student = allStudents.firstWhere(
    (element) => element.name == realStudent.name,
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
    preparingStart = testTimeFormat.parse(row.children[4].text).copyWith(
        year: testDate.year, month: testDate.month, day: testDate.day);
  }
  var testStart = testTimeFormat
      .parse(row.children[4 + add].text)
      .copyWith(year: testDate.year, month: testDate.month, day: testDate.day);

  var testEnd = testTimeFormat
      .parse(row.children[5 + add].text)
      .copyWith(year: testDate.year, month: testDate.month, day: testDate.day);

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
  if (contentContainer != null && contentContainer.children.isNotEmpty) {
    if (contentContainer.children[0].text ==
        "Aktiviteten har ikke noget indhold.") {
      return RegularCalendarEventDetails([], note);
    }
    List<Bs4Element> homework = contentContainer.findAll("article");
    for (var homeworkPiece in homework) {
      contents.addAll(extractHomeworkArticle(homeworkPiece));
    }
  }

  return RegularCalendarEventDetails(contents, note);
}

List<Content> extractHomeworkArticle(Bs4Element element) {
  var contentHeader = element.children[0];
  var links = element.findAll('a');

  if (links.isNotEmpty) {
    String text = element.text;
    List<Content> contents = [];
    for (var link in links) {
      var linkText = link.text;
      text.replaceAll(linkText, '');
      var linkHref = link.getAttrValue('href')!;
      contents.add(Content(linkText, href: linkHref));
    }
    return contents;
  } else {
    String note = "";
    var childrenClone = element.children..removeAt(0);
    for (var child in childrenClone) {
      note = "$note\n${child.text}";
    }
    return [Content(contentHeader.text, note: note.trim())];
  }
}
