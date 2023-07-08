import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/topics/students/scraping.dart';
import 'package:lectio_wrapper/types/primitives/person.dart';
import 'package:http/http.dart' as http;

class StudentsController {
  final Student student;
  StudentsController(this.student);

  Future<List<Person>> list() async {
    var scripts = extractScripts(await student.messages.newMessage());

    var studentScript =
        scripts.firstWhere((element) => element.queries['type'] == "bcstudent");
    var studentsAspx =
        await http.get(Uri.parse("https://lectio.dk${studentScript.url}"));

    return extractStudents(BeautifulSoup(studentsAspx.body));
  }
}
