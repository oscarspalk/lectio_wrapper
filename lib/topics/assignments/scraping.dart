import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:intl/intl.dart';
import 'package:lectio_wrapper/types/assignment.dart';

Future<List<Assignment>> extractAssignments(BeautifulSoup soup) async {
  List<Assignment> assignments = [];
  var assignmentsSoup = soup.find("table")!;

  var assigmentsChildren = assignmentsSoup.children[0].children;
  // remove first
  assigmentsChildren.removeAt(0).decompose();
  for (var assignmentRow in assigmentsChildren) {
    var columns = assignmentRow.findAll("td");
    int week = int.parse(columns[0].text);
    String team = columns[1].text;
    var task = columns[2].children[0].children[0];
    String taskLink = task.getAttrValue('href')!;
    String title = task.text;
    DateFormat format = DateFormat("d/M-y HH:mm");
    DateTime deadline = format.parse(columns[3].text);
    double studentTime = double.parse(columns[4].text.replaceAll(",", "."));
    String status = columns[5].text;
    String absence = columns[6].text;
    String taskNote = columns[8].text;
    assignments.add(Assignment(
        week: week,
        team: team,
        title: title,
        deadline: deadline,
        studentTime: studentTime,
        status: status,
        absence: absence,
        taskNote: taskNote,
        taskLink: taskLink));
  }
  return assignments;
}
