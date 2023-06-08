import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/classes/scraping.dart';
import 'package:lectio_wrapper/types/class.dart';
import 'package:requests/requests.dart';

class ClassesController {
  final Student student;

  ClassesController(this.student);

  /// Get all classes as a [List] of [Class]
  Future<List<ClassRef>> list() async {
    String url = student.buildUrl("FindSkema.aspx?type=stamklasse");
    var soup = await Requests.get(url);
    return await extractClasses(BeautifulSoup(soup.body));
  }

  Future<Class> get(ClassRef ref) async {
    String url = student
        .buildUrl("subnav/members.aspx?klasseid=${ref.id}&showstudents=1");
    var soup = await Requests.get(url);
    List<Student> students =
        await extractStudents(BeautifulSoup(soup.body), student.gymId);
    return Class(ref.id, ref.name, students);
  }
}
