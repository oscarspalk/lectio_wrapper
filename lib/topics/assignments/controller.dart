import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/assignments/scraping.dart';
import 'package:lectio_wrapper/types/assignment.dart';
import 'package:lectio_wrapper/utils/scraping.dart';
import 'package:requests/requests.dart';

class AssignmentsController {
  final Student student;
  AssignmentsController(this.student);

  /// Returns all assignments for the specified year.
  Future<List<AssignmentRef>> list(int year) async {
    String url =
        student.buildUrl("OpgaverElev.aspx?elevid=${student.studentId}");
    var assignmentSoup = await postLoggedInPageSoup(
        url, r"s$m$ChooseTerm$term", {r"s$m$ChooseTerm$term": year.toString()});
    return await extractAssignments(assignmentSoup!);
  }

  Future<Assignment> get(AssignmentRef ref) async {
    String url = student.buildUrl(
        "ElevAflevering.aspx?elevid=${student.studentId}&exerciseid=${ref.id}");
    var response = await Requests.get(url);
    return extractAssignment(BeautifulSoup(response.body), ref);
  }
}
