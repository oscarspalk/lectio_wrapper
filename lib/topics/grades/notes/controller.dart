import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/topics/grades/notes/scraping.dart';
import 'package:lectio_wrapper/types/grades/note.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

class GradeNotesController {
  final Student student;
  GradeNotesController(this.student);

  Future<List<GradeNote>> list() async {
    var url = student
        .buildUrl("grades/grade_report.aspx?elevid=${student.studentId}");
    var response = await lppDio.get(url);
    return await extractGradeNotes(BeautifulSoup(response.data), student);
  }
}
