import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/topics/grades/notes/scraping.dart';
import 'package:lectio_wrapper/types/grades/note.dart';
import 'package:lectio_wrapper/types/grades/subject.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

class GradeNotesController extends Controller {
  GradeNotesController(super.student);

  Future<List<GradeNote>> list() async {
    if (student.demo) {
      return [
        GradeNote(
            registered: DateTime.now(),
            team: Team(name: "Dansk", id: "", displayName: "Dansk"),
            subject: Subject(name: "Dansk", type: SubjectTypes.written),
            note: "Op med motivationen",
            gradeType: "7-trins",
            teacherInitials: "NB")
      ];
    }
    var url = student
        .buildUrl("grades/grade_report.aspx?elevid=${student.studentId}");
    var response = await request(url);
    return await extractGradeNotes(BeautifulSoup(response.data), student);
  }
}
