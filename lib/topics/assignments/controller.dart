import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/assignments/scraping.dart';
import 'package:lectio_wrapper/types/assignment.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

class AssignmentsController {
  final Student student;
  AssignmentsController(this.student);

  /// Returns all assignments for the specified year.
  Future<List<Assignment>> list(int year) async {
    String url =
        student.buildUrl("OpgaverElev.aspx?elevid=${student.studentId}");
    var assignmentSoup = await postLoggedInPageSoup(
        url, r"s$m$ChooseTerm$term", {r"s$m$ChooseTerm$term": year.toString()});
    return await extractAssignments(assignmentSoup!);
  }
}
