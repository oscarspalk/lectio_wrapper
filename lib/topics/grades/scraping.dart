import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/types/grades/grade.dart';
import 'package:lectio_wrapper/types/grades/subject.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';

Future<List<GradeRow>> extractGrades(
    BeautifulSoup soup, Student student) async {
  List<GradeRow> returnedRows = [];
  Bs4Element gradeTable =
      soup.find('*', id: 's_m_Content_Content_karakterView_KarakterGV')!;
  List<Bs4Element> gradeRows = gradeTable.children[0].children;
  // remove headers
  gradeRows.removeAt(0);
  for (var gradeRow in gradeRows) {
    returnedRows.add(extractGradeRow(gradeRow, student));
  }
  return returnedRows;
}

GradeRow extractGradeRow(Bs4Element gradeRow, Student student) {
  var subjectList = gradeRow.children[1].text.split(", ");
  var subject = Subject(
      subjectList[0],
      SubjectTypes.values
          .firstWhere((element) => element.name == subjectList[1]));
  var teamCell = gradeRow.children[0].children[0];
  var teamId = teamCell.getAttrValue("data-lectiocontextcard")!;
  var teamName = teamCell.text;
  //var teamContext = (await student.context.get(teamId)) as TeamContext;
  var team = Team(teamName, teamId, teamName);

  // extract all grades
  List<Grade?> grades = [];
  for (int i = 2; i < 8; i++) {
    grades.add(extractSingleGrade(gradeRow.children[i]));
  }
  return GradeRow(team, subject,
      firstStandpunkt: grades[0],
      secondStandpunkt: grades[1],
      finalYearGrade: grades[2],
      internalTest: grades[3],
      yearGrade: grades[4],
      examGrade: grades[5]);
}

Grade? extractSingleGrade(Bs4Element element) {
  try {
    if (element.children.isEmpty) {
      return null;
    }
    var child = element.children.first;
    var text = child.text;
    if (text == "--") {
      return null;
    }
    int grade = int.parse(text);
    List<String> infos = child.getAttrValue("title")!.split("\n");
    List<String> weightList = infos.elementAt(2).split(": ");
    double weight = double.parse(weightList.elementAt(1).replaceAll(",", "."));
    return Grade(weight, grade);
  } catch (_) {
    return null;
  }
}
