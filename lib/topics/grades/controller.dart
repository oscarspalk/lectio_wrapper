import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/topics/grades/notes/controller.dart';
import 'package:lectio_wrapper/topics/grades/scraping.dart';
import 'package:lectio_wrapper/types/grades/exam_proof.dart';
import 'package:lectio_wrapper/types/grades/grade.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

class GradeController extends Controller {
  late GradeNotesController notes;
  GradeController(super.student) {
    notes = GradeNotesController(student);
  }

  Future<List<GradeRow>> list() async {
    var url = student
        .buildUrl("grades/grade_report.aspx?elevid=${student.studentId}");
    var response = await request(url);
    return extractGrades(BeautifulSoup(response.data), student);
  }

  Future<ExamProof?> getExamProof() async {
    var url = student
        .buildUrl("grades/grade_report.aspx?elevid=${student.studentId}");
    var response = await request(url);
    var entries = extractExamEntries(BeautifulSoup(response.data));

    return ExamProof(entries: entries);
  }
}
