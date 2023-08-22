import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/types/class.dart';
import 'package:lectio_wrapper/utils/controller.dart';

class StudentsController extends Controller {
  StudentsController(super.student);
  final List<String> _groupNames = [
    "Alle 1. G. elever",
    "Alle 2. G. elever",
    "Alle 3. G. elever",
    "Alle Lærere"
  ];
  Stream<List<Student>> list() async* {
    var meta = await student.meta.get();
    var groups = meta.groups
        .where((element) => _groupNames.contains(element.name))
        .toList();
    for (var group in groups) {
      var context = await student.context.get(group.id);
      var groupFetched = await student.classes
          .get(ClassRef(name: '', id: context.id), group: true);
      yield groupFetched.students;
    }
  }
}
