import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:intl/intl.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/types/grades/note.dart';
import 'package:lectio_wrapper/types/grades/subject.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';

DateFormat registeredNoteFormat = DateFormat("dd/MM-yyyy HH:mm");

Future<List<GradeNote>> extractGradeNotes(
    BeautifulSoup soup, Student student) async {
  List<GradeNote> notes = [];
  Bs4Element noteTable =
      soup.find("*", id: 's_m_Content_Content_karakterView_KarakterNoterGrid')!;
  List<Bs4Element> noteRows = noteTable.children[0].children;
  noteRows.removeAt(0);

  for (var noteRow in noteRows) {
    var teamCell = noteRow.children[0].children[0];
    var teamId = teamCell.getAttrValue("data-lectiocontextcard")!;
    var team =
        Team(name: teamCell.text, id: teamId, displayName: teamCell.text);
    var note = noteRow.children[4].text;
    var registeredList = noteRow.children[3].text.split(" - ");
    var registered = registeredNoteFormat.parse(registeredList[0]);
    var subjectCellList = noteRow.children[1].text.split(" - ");
    var gradeType = subjectCellList[0];
    var subjectType =
        subjectCellList[1].substring(0, subjectCellList[1].indexOf("\n"));
    var subjectName = subjectCellList[1].replaceFirst("$subjectType\n", '');
    var subject = Subject(
        subjectName,
        SubjectTypes.values.firstWhere(
            (element) => element.name.toLowerCase() == subjectType));
    var teacherInitials = registeredList[1];
    var grade = int.tryParse(noteRow.children[2].text);
    notes.add(GradeNote(
        registered, team, subject, note, grade, gradeType, teacherInitials));
  }
  return notes;
}
