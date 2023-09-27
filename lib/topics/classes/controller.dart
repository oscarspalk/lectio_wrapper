import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/classes/scraping.dart';
import 'package:lectio_wrapper/types/class.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

class ClassesController extends Controller {
  ClassesController(super.student);

  final List<Class> _cached = [];

  /// Get all classes as a [List] of [Class]
  Future<List<ClassRef>> list() async {
    String url = student.buildUrl("FindSkema.aspx?type=stamklasse");
    var soup = await request(url);
    return extractClasses(BeautifulSoup(soup.data));
  }

  Future<Class> get(ClassRef ref, {bool group = false}) async {
    var match = _cached.where((element) => element.id == ref.id).firstOrNull;
    if (match != null) {
      return match;
    }
    String url = student.buildUrl(
        "subnav/members.aspx?${group ? "holdelementid" : "klasseid"}=${ref.id}&showstudents=1${group ? "&showteachers=1" : ""}");
    var soup = await request(url);
    List<Student> students =
        extractStudents(BeautifulSoup(soup.data), student.gymId, group: group);
    if (!group) {
      for (var element in students) {
        element.info = ref.name;
      }
    }
    var fetchedClass = Class(id: ref.id, name: ref.name, students: students);
    _cached.add(fetchedClass);
    return fetchedClass;
  }
}
