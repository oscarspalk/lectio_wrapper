import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:lectio_wrapper/topics/absence/registrations/controller.dart';
import 'package:lectio_wrapper/topics/absence/scraping.dart';
import 'package:lectio_wrapper/types/absence/entry.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

class AbsenceController extends Controller {
  late AbsenceRegistrationsController registrations;
  AbsenceController(super.student) {
    registrations = AbsenceRegistrationsController(student);
  }

  Future<List<AbsenceEntry>> list() async {
    if (student.demo) {
      var faker = Faker.instance;
      return [
        AbsenceEntry(
            team: Team(
                name: faker.name.firstName(),
                id: "",
                displayName: faker.name.firstName()),
            regular: RegularEntryData(
                currentPercent: 0.3,
                currentModules: AbsenceFraction(current: 23, total: 2),
                finalPercent: 0.4,
                finalModules: AbsenceFraction(current: 23, total: 2)),
            assignment: AssignmentEntryData(
                currentPercent: 0.2,
                currentStudentTime: AbsenceFraction(current: 23, total: 2),
                finalPercent: 2.0,
                finalStudentTime: AbsenceFraction(current: 23, total: 2)))
      ];
    }
    var url =
        student.buildUrl("subnav/fravaerelev.aspx?elevid=${student.studentId}");
    var response = await request<String>(url);
    if (response.data != null) {
      return await extractAbsence(
          BeautifulSoup(response.data as String), student);
    }
    return [];
  }
}
