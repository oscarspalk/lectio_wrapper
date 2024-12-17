import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/topics/assignments/scraping.dart';
import 'package:lectio_wrapper/types/assignment.dart';
import 'package:lectio_wrapper/types/message/meta/meta.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dating.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

class AssignmentsController extends Controller {
  AssignmentsController(super.student);

  /// Returns all assignments for the specified year.
  Future<List<AssignmentRef>> list(
      {List<AssignmentRef>? debugAssignments}) async {
    if (student.demo) {
      return [
        AssignmentRef(
            week: weekFromDateTime(DateTime.now()),
            team: "Da",
            title: "Skriftlig aflevering",
            deadline: DateTime.now().add(const Duration(days: 2)),
            studentTime: 4.0,
            status: "Venter",
            awaits: "Lærer",
            absence: "100%",
            taskNote: "Noget",
            id: "")
      ];
    }
    if (debugAssignments != null) {
      return debugAssignments;
    }
    String url =
        student.buildUrl("OpgaverElev.aspx?elevid=${student.studentId}");
    var assignmentSoup = await postLoggedInPageSoup(url, r"s$m$ChooseTerm$term",
        {r"s$m$Content$Content$ShowThisTermOnlyCB": "on"});
    /*await request(
        url); await postLoggedInPageSoup(
        url, r"s$m$ChooseTerm$term", {r"s$m$ChooseTerm$term": year.toString()});*/
    if (assignmentSoup != null) {
      return await extractAssignments(assignmentSoup);
    }
    return [];
  }

  Future<Assignment> get(AssignmentRef ref) async {
    if (student.demo) {
      return Assignment(
          testFiles: [],
          id: "",
          title: "Dansk",
          note: "",
          team: Team(name: "Da", id: "", displayName: "Dansk"),
          grading: "7-trinskalaen",
          responsible: MetaDataEntry(id: "", name: "John"),
          hours: 5.0,
          deadline: DateTime.now().add(const Duration(days: 2)),
          grade: "7",
          absence: 1.0,
          gradeNote: "Nice",
          entries: []);
    }
    String url = student.buildUrl(
        "ElevAflevering.aspx?elevid=${student.studentId}&exerciseid=${ref.id}");
    var response = await request(url);
    return await extractAssignment(BeautifulSoup(response.data), ref, student);
  }
}
