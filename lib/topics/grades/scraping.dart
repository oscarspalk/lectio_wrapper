import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/types/grades/exam_entry.dart';
import 'package:lectio_wrapper/types/grades/exam_grade.dart';
import 'package:lectio_wrapper/types/grades/grade.dart';
import 'package:lectio_wrapper/types/grades/subject.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';

List<GradeRow> extractGrades(BeautifulSoup soup, Student student) {
  List<GradeRow> returnedRows = [];
  Bs4Element? gradeTable =
      soup.find('*', id: 's_m_Content_Content_karakterView_KarakterGV');
  List<Bs4Element>? gradeRows = gradeTable?.children[0].children;
  // remove headers
  gradeRows?.removeAt(0);
  for (var gradeRow in gradeRows ?? []) {
    var row = extractGradeRow(gradeRow, student);
    if (row != null) {
      returnedRows.add(row);
    }
  }
  return returnedRows;
}

GradeRow? extractGradeRow(Bs4Element gradeRow, Student student) {
  var subjectList = gradeRow.children[1].text.split(", ");
  var subject = Subject(
      name: subjectList[0],
      type: SubjectTypes.values
          .where((element) => element.name == subjectList[1])
          .firstOrNull);
  var teamCell = gradeRow.children[0].children[0];
  var teamId = teamCell.getAttrValue("data-lectiocontextcard")!;
  var teamName = teamCell.text;
  var team = Team(name: teamName, id: teamId, displayName: teamName);

  // extract all grades
  List<Grade?> grades = [];
  for (int i = 2; i < 8; i++) {
    var child = gradeRow.children.elementAtOrNull(i);
    if (child == null) {
      grades.add(null);
    } else {
      var grade = extractSingleGrade(gradeRow.children[i]);
      grades.add(grade);
    }
  }
  return GradeRow(
      team: team,
      subject: subject,
      firstStandpunkt: grades[0],
      secondStandpunkt: grades[1],
      finalYearGrade: grades[2],
      internalTest: grades[3],
      yearGrade: grades[4],
      examGrade: grades[5]);
}

Grade? extractSingleGrade(Bs4Element element) {
  try {
    var child = element.children.first;
    var text = child.text;
    if (text == "--") {
      return null;
    }
    String takenText = text.substring(0, text.length > 1 ? 2 : text.length);
    int grade = int.parse(takenText);
    List<String> infos = child.getAttrValue("title")!.split("\n");
    List<String> weightList = infos.elementAt(2).split(": ");
    double weight = double.parse(weightList.elementAt(1).replaceAll(",", "."));
    return Grade(weight: weight, grade: grade);
  } catch (_) {
    return null;
  }
}

List<ExamEntry> extractExamEntries(BeautifulSoup soup) {
  List<ExamEntry> entries = [];
  var diplomaDiv = soup.find('*', id: 'printareaDiplomaLines');
  var table = diplomaDiv?.find('tbody')?.children;
  if (table != null) {
    // start at index 2 because of double header
    for (int i = 2; i < table.length; i++) {
      var children = table[i].children;
      var subject = children.elementAtOrNull(0)?.text;
      var yearGrade = children.length >= 4
          ? extractExamGrade(children.sublist(1, 4))
          : null;
      var examGrade = children.length >= 7
          ? extractExamGrade(children.sublist(4, 7))
          : null;
      if (subject != null && subject.isNotEmpty) {
        entries.add(ExamEntry(
            team: subject, yearGrade: yearGrade, examGrade: examGrade));
      }
    }
  }
  return entries;
}

ExamGrade? extractExamGrade(List<Bs4Element> elements) {
  var weight = double.tryParse(
      elements.elementAtOrNull(0)?.text.replaceAll(",", ".") ?? "");
  var grade = int.tryParse(elements.elementAtOrNull(1)?.text ?? "");
  var ects = elements.elementAtOrNull(2)?.text;
  if (ects != null && grade != null && weight != null) {
    return ExamGrade(ects: ects, grade: Grade(weight: weight, grade: grade));
  }
  return null;
}
