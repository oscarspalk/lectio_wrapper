import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/topics/absence/registrations/scraping.dart';
import 'package:lectio_wrapper/types/absence/cause.dart';
import 'package:lectio_wrapper/utils/scraping.dart';
import 'package:requests/requests.dart';

class AbsenceRegistrationsController {
  final Student student;

  AbsenceRegistrationsController(this.student);

  Future<List<AbsenceCauseEntry>> list() async {
    var url = student.buildUrl(
        "subnav/fravaerelev_fravaersaarsager.aspx?elevid=${student.studentId}");
    var response = await Requests.get(url);
    return await extractAbsenceCauses(BeautifulSoup(response.body));
  }

  Future<void> update(
      AbsenceCauseEntry entry, AbsenceCauses cause, String note) async {
    String target = r"s$m$Content$Content$savecancelapplyBtn$svbtn";
    String url = student.buildUrl(
        "fravaer_aarsag.aspx?elevid=${student.studentId}&id=${entry.id}&atype=aa");
    await postLoggedInPageSoup(url, target, {
      r"s$m$Content$Content$StudentReasonDD$dd": cause.name,
      r"s$m$Content$Content$cancelStudentNote$tb": note
    });
  }
}
