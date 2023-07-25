import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/types/class.dart';

class StudentsController {
  final Student student;
  StudentsController(this.student);
  final List<String> _groupNames = [
    "Alle 1. G. elever",
    "Alle 2. G. elever",
    "Alle 3. G. elever",
    "Alle Lærere"
  ];
  Future<List<Student>> list() async {
    List<Student> students = [];
    var meta = await student.meta.get();
    var groups = meta.groups
        .where((element) => _groupNames.contains(element.name))
        .toList();
    var contexts =
        await Future.wait(groups.map((group) => student.context.get(group.id)));
    var futures = await Future.wait(contexts.map((context) =>
        student.classes.get(ClassRef(name: '', id: context.id), group: true)));
    for (var future in futures) {
      students.addAll(future.students);
    }
    return students;
  }
}
