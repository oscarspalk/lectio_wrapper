import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/topics/terms/scraping.dart';
import 'package:lectio_wrapper/types/terms/term.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

class TermsController extends Controller {
  TermsController(super.student);

  Future<List<Term>> list() async {
    if (student.demo) {
      return [
        Term(2023, "2023", false),
        Term(2023, "2024", false),
        Term(2023, "2025", false)
      ];
    }
    var url =
        student.buildUrl("SkemaNy.aspx?type=elev&elevid=${student.studentId}");
    var req = await request(url);
    return extractTerms(BeautifulSoup(req.data));
  }

  Future<void> set(Term term) async {
    var url =
        student.buildUrl("SkemaNy.aspx?type=elev&elevid=${student.studentId}");
    String target = r"s$m$ChooseTerm$term";
    await postLoggedInPageSoup(
        url, target, {r"s$m$ChooseTerm$term": term.term.toString()});
  }
}
