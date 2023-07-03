import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/topics/students/scraping.dart';
import 'package:lectio_wrapper/types/primitives/person.dart';
import 'package:requests/requests.dart';

class StudentsController {
  final Student student;
  StudentsController(this.student);

  Future<List<Person>> list() async {
    var url =
        student.buildUrl("beskeder2.aspx?type=nybesked&elevid=54299107744");
    var response = await Requests.get(url);
    var scripts = extractScripts(BeautifulSoup(response.body));
    var studentScript =
        scripts.firstWhere((element) => element.queries['type'] == "bcstudent");
    var studentsAspx = await Requests.get(
        "https://lectio.dk${studentScript.url}",
        headers: {"Content-Type": "application/x-javascript"});
    return extractStudents(BeautifulSoup(studentsAspx.body));
  }
}
