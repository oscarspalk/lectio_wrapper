import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/topics/absence/scraping.dart';
import 'package:lectio_wrapper/types/absence/entry.dart';
import 'package:requests/requests.dart';

class AbsenceController {
  final Student student;

  AbsenceController(this.student);

  Future<List<AbsenceEntry>> list() async {
    var url =
        student.buildUrl("subnav/fravaerelev.aspx?elevid=${student.studentId}");
    var response = await Requests.get(url);
    return await extractAbsence(BeautifulSoup(response.body));
  }
}
