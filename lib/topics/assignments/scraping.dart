import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:intl/intl.dart';
import 'package:lectio_wrapper/types/assignment.dart';
import 'package:lectio_wrapper/types/primitives/file.dart';
import 'package:lectio_wrapper/types/primitives/person.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

DateFormat deadlineFormat = DateFormat('dd/MM-yyyy HH:mm');

Future<List<AssignmentRef>> extractAssignments(BeautifulSoup soup) async {
  List<AssignmentRef> assignments = [];
  var assignmentsSoup = soup.find("table")!;

  var assigmentsChildren = assignmentsSoup.children[0].children;
  // remove first
  assigmentsChildren.removeAt(0).decompose();
  for (var assignmentRow in assigmentsChildren) {
    var columns = assignmentRow.findAll("td");
    int week = int.parse(columns[0].text);
    String team = columns[1].text;
    var task = columns[2].children[0].children[0];
    String id = queriesFromSoup(task.getAttrValue('href')!)['exerciseid']!;
    String title = task.text;
    DateFormat format = DateFormat("d/M-y HH:mm");
    DateTime deadline = format.parse(columns[3].text);
    double studentTime = double.parse(columns[4].text.replaceAll(",", "."));
    String status = columns[5].text;
    String absence = columns[6].text;
    String taskNote = columns[8].text;
    assignments.add(AssignmentRef(
        week: week,
        team: team,
        title: title,
        deadline: deadline,
        studentTime: studentTime,
        status: status,
        absence: absence,
        taskNote: taskNote,
        id: id));
  }
  return assignments;
}

Assignment extractAssignment(BeautifulSoup soup) {
  List<Bs4Element> infoTableRows = soup
      .find('*', id: 'm_Content_registerAfl_pa')!
      .children[0]
      .children[0]
      .children;
  String title = soup.find('*', id: 'm_Content_NameLbl')!.text;
  String note = infoTableRows[1].children[1].text;
  Bs4Element teamElement = infoTableRows[2].children[1].children[0];
  Team team = Team(teamElement.text,
      teamElement.getAttrValue("data-lectiocontextcard")!.replaceAll("HE", ""));
  String grading = soup.find('*', id: 'm_Content_gradeScaleIdLbl')!.text;
  Bs4Element responsibleElement = infoTableRows[4].children[1].children[0];
  Person responsible = Person(
      responsibleElement.text,
      responsibleElement
          .getAttrValue("data-lectiocontextcard")!
          .replaceAll("T", ""));
  double hours = double.parse(soup
      .find('*', id: 'm_Content_WeightLbl')!
      .text
      .split(" ")
      .elementAt(0)
      .replaceAll(",", "."));
  DateTime deadline = deadlineFormat.parse(infoTableRows[6].children[1].text);
  List<Bs4Element> entryRows =
      soup.find('*', id: 'm_Content_RecipientGV')!.children[0].children;
  entryRows.removeAt(0);
  List<AssignmentEntry> entries = [];
  for (var row in entryRows) {
    entries.add(extractAssignmentEntry(row));
  }
  return Assignment(
      title, note, team, grading, responsible, hours, deadline, entries);
}

AssignmentEntry extractAssignmentEntry(Bs4Element row) {
  DateTime time = deadlineFormat.parse(row.children[0].text);
  Bs4Element personElement = row.children[1].children[0];
  Person user = Person(
      personElement.text,
      personElement
          .getAttrValue("data-lectiocontextcard")!
          .replaceAll(RegExp(r'S|T'), ''));
  String note = row.children[2].text;
  Bs4Element resource = row.children[3].children[0].children[0];
  File file = File(resource.getAttrValue("href")!, resource.text);
  return AssignmentEntry(time, user, note, file);
}
