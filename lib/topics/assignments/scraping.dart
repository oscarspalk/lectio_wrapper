import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:intl/intl.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/types/assignment.dart';
import 'package:lectio_wrapper/types/context/team.dart';
import 'package:lectio_wrapper/types/message/meta/meta.dart';
import 'package:lectio_wrapper/types/primitives/file.dart';
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
    var ref = extractAssignmentRef(assignmentRow);
    if (ref != null) {
      assignments.add(ref);
    }
  }
  return assignments;
}

AssignmentRef? extractAssignmentRef(Bs4Element assignmentRow) {
  var columns = assignmentRow.findAll("td");
  int week = int.parse(columns[0].text);
  String team = columns[1].text;
  var task = columns[2].find('a');
  if (task != null) {
    String id = queriesFromSoup(task.getAttrValue('href')!)['exerciseid']!;
    String title = task.text;
    DateFormat format = DateFormat("d/M-y HH:mm");
    DateTime deadline = format.parse(columns[3].text);
    double studentTime = double.parse(columns[4].text.replaceAll(",", "."));
    String status = columns[5].text;
    String absence = columns[6].text;
    String taskNote = columns[8].text;
    return AssignmentRef(
        week: week,
        team: team,
        title: title,
        deadline: deadline,
        studentTime: studentTime,
        status: status,
        absence: absence,
        taskNote: taskNote,
        id: id);
  }
  return null;
}

Future<Assignment> extractAssignment(
    BeautifulSoup soup, AssignmentRef ref, Student student) async {
  Bs4Element? weirdElement = soup.find('*', id: 'm_Content_ExerciseFilePnl');
  List<File> testFiles = [];
  List<Bs4Element> infoTableRows = soup
      .find('*', id: 'm_Content_registerAfl_pa')!
      .children[weirdElement != null ? 1 : 0]
      .children[0]
      .children;
  String title = soup.find('*', id: 'm_Content_NameLbl')!.text;
  String testFilesText = infoTableRows[1].children[0].text;
  bool hasTestFiles = testFilesText.startsWith("Opgavebeskrivelse");
  if (hasTestFiles) {
    var entries = infoTableRows[1].children[1].children;
    for (var entry in entries) {
      if (entry.name == "a") {
        testFiles
            .add(File(href: entry.getAttrValue("href")!, name: entry.text));
      }
    }
  }
  String note = infoTableRows[hasTestFiles ? 2 : 1].children[1].text;

  Bs4Element teamElement =
      infoTableRows[hasTestFiles ? 3 : 2].children[1].children[0];
  var teamId = teamElement.getAttrValue("data-lectiocontextcard")!;
  var teamContext = (await student.context.get(teamId)) as TeamContext;
  Team team = Team(
      name: teamElement.text, id: teamId, displayName: teamContext.subject);
  String grading = soup.find('*', id: 'm_Content_gradeScaleIdLbl')!.text;
  Bs4Element responsibleElement =
      infoTableRows[hasTestFiles ? 5 : 4].children[1].children[0];
  MetaDataEntry responsible = MetaDataEntry(
      name: responsibleElement.text,
      id: responsibleElement.getAttrValue("data-lectiocontextcard")!);
  double hours = double.parse(soup
      .find('*', id: 'm_Content_WeightLbl')!
      .text
      .split(" ")
      .elementAt(0)
      .replaceAll(",", "."));
  DateTime deadline = deadlineFormat
      .parse(infoTableRows[hasTestFiles ? 7 : 6].children[1].text);
  List<Bs4Element> entryRows =
      soup.find('*', id: 'm_Content_RecipientGV')!.children[0].children;
  entryRows.removeAt(0);
  List<AssignmentEntry> entries = [];
  for (var row in entryRows) {
    entries.add(extractAssignmentEntry(row));
  }
  return Assignment(
      id: ref.id,
      title: title,
      note: note,
      team: team,
      grading: grading,
      responsible: responsible,
      hours: hours,
      deadline: deadline,
      entries: entries,
      testFiles: testFiles);
}

AssignmentEntry extractAssignmentEntry(Bs4Element row) {
  DateTime time = deadlineFormat.parse(row.children[0].text);
  Bs4Element personElement = row.children[1].children[0];
  MetaDataEntry user = MetaDataEntry(
      name: personElement.text,
      id: personElement.getAttrValue("data-lectiocontextcard")!);
  String note = row.children[2].text;
  Bs4Element resource = row.children[3].children[0].children[0];
  File file = File(href: resource.getAttrValue("href")!, name: resource.text);
  return AssignmentEntry(time: time, user: user, note: note, resource: file);
}
