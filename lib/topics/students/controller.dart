import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/topics/students/scraping.dart';
import 'package:lectio_wrapper/types/primitives/person.dart';
import 'package:requests/requests.dart';

class StudentsController {
  final Student student;
  StudentsController(this.student);

  Future<List<Person>> list() async {
    var soup = await student.messages.newMessage();
    var scripts = extractScripts(soup);
    var studentScript =
        scripts.firstWhere((element) => element.queries['type'] == "bcstudent");
    var studentsAspx =
        await Requests.get("https://lectio.dk${studentScript.url}", headers: {
      "referer": student
          .buildUrl("beskeder2.aspx?type=liste&elevid=${student.studentId}")
    });

    return extractStudents(BeautifulSoup(studentsAspx.body));
  }
}
