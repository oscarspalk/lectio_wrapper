import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/topics/assignments/scraping.dart';
import 'package:lectio_wrapper/types/assignment.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

class AssignmentsController extends Controller {
  AssignmentsController(super.student);

  /// Returns all assignments for the specified year.
  Future<List<AssignmentRef>> list() async {
    String url =
        student.buildUrl("OpgaverElev.aspx?elevid=${student.studentId}");
    var assignmentSoup = await request(
        url); /*await postLoggedInPageSoup(
        url, r"s$m$ChooseTerm$term", {r"s$m$ChooseTerm$term": year.toString()});*/
    return await extractAssignments(BeautifulSoup(assignmentSoup.data));
  }

  Future<Assignment> get(AssignmentRef ref) async {
    String url = student.buildUrl(
        "ElevAflevering.aspx?elevid=${student.studentId}&exerciseid=${ref.id}");
    var response = await request(url);
    return await extractAssignment(BeautifulSoup(response.data), ref, student);
  }
}
