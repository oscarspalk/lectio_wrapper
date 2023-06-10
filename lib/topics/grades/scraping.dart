import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/types/grades/grade.dart';
import 'package:lectio_wrapper/types/grades/subject.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';

List<GradeRow> extractGrades(BeautifulSoup soup) {
  List<GradeRow> returnedRows = [];
  Bs4Element gradeTable =
      soup.find('*', id: 's_m_Content_Content_karakterView_KarakterGV')!;
  List<Bs4Element> gradeRows = gradeTable.children[0].children;
  // remove headers
  gradeRows.removeAt(0);
  for (var gradeRow in gradeRows) {
    var subjectList = gradeRow.children[1].text.split(", ");
    var subject = Subject(
        subjectList[0],
        SubjectTypes.values
            .firstWhere((element) => element.name == subjectList[1]));
    var teamCell = gradeRow.children[0].children[0];
    var teamId =
        teamCell.getAttrValue("data-lectiocontextcard")!.replaceFirst('HE', '');
    var teamName = teamCell.text;
    var team = Team(teamName, teamId);

    // extract all grades
    List<int?> grades = [];
    for (int i = 2; i < 8; i++) {
      grades.add(extractSingleGrade(gradeRow.children[i]));
    }
    returnedRows.add(GradeRow(team, subject,
        firstStandpunkt: grades[0],
        secondStandpunkt: grades[1],
        finalYearGrade: grades[2],
        internalTest: grades[3],
        yearGrade: grades[4],
        examGrade: grades[5]));
  }
  return returnedRows;
}

int? extractSingleGrade(Bs4Element element) {
  if (element.children.isEmpty) {
    return null;
  }
  var child = element.children.first;
  var text = child.text;
  if (text == "--") {
    return null;
  }
  return int.parse(text);
}
