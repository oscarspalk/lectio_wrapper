import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/topics/absence/registrations/controller.dart';
import 'package:lectio_wrapper/topics/absence/scraping.dart';
import 'package:lectio_wrapper/types/absence/entry.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

class AbsenceController extends Controller {
  late AbsenceRegistrationsController registrations;
  AbsenceController(super.student) {
    registrations = AbsenceRegistrationsController(student);
  }

  Future<List<AbsenceEntry>> list() async {
    var url =
        student.buildUrl("subnav/fravaerelev.aspx?elevid=${student.studentId}");
    var response = await request(url);
    return await extractAbsence(BeautifulSoup(response.data), student);
  }
}
