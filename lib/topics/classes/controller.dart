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
    return extractClasses(BeautifulSoup(soup.body));
  }

  Future<Class> get(ClassRef ref, {bool group = false}) async {
    String url = student.buildUrl(
        "subnav/members.aspx?${group ? "holdelementid" : "klasseid"}=${ref.id}&showstudents=1${group ? "&showteachers=1" : ""} ");
    var soup = await Requests.get(url);
    List<Student> students =
        extractStudents(BeautifulSoup(soup.body), student.gymId, group: group);
    return Class(ref.id, ref.name, students);
  }
}
