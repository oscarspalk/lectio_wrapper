import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/topics/grades/notes/scraping.dart';
import 'package:lectio_wrapper/types/grades/note.dart';
import 'package:requests/requests.dart';

class GradeNotesController {
  final Student student;
  GradeNotesController(this.student);

  Future<List<GradeNote>> list() async {
    var url = student
        .buildUrl("grades/grade_report.aspx?elevid=${student.studentId}");
    var response = await Requests.get(url);
    return extractGradeNotes(BeautifulSoup(response.body));
  }
}
