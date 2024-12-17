import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:lectio_wrapper/topics/grades/notes/controller.dart';
import 'package:lectio_wrapper/topics/grades/scraping.dart';
import 'package:lectio_wrapper/types/grades/exam_proof.dart';
import 'package:lectio_wrapper/types/grades/grade.dart';
import 'package:lectio_wrapper/types/grades/subject.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

class GradeController extends Controller {
  late GradeNotesController notes;
  GradeController(super.student) {
    notes = GradeNotesController(student);
  }

  Future<List<GradeRow>> list() async {
    if (student.demo) {
      var faker = Faker.instance;
      return List.generate(27, (i) {
        return GradeRow(
            team:
                Team(name: faker.name.jobType(), id: "", displayName: "Dansk"),
            subject: Subject(name: "Dansk", type: SubjectTypes.written),
            examGrade: Grade(weight: 1.0, grade: 12),
            finalYearGrade: Grade(weight: 1.0, grade: 12),
            firstStandpunkt: Grade(weight: 1.0, grade: 12),
            internalTest: Grade(weight: 1.0, grade: 12),
            secondStandpunkt: Grade(weight: 1.0, grade: 12),
            yearGrade: Grade(weight: 1.0, grade: 12));
      });
    }
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
