import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/terms/scraping.dart';
import 'package:lectio_wrapper/types/terms/term.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

class TermsController {
  final Student student;
  TermsController(this.student);

  Future<List<Term>> list() async {
    var url =
        student.buildUrl("SkemaNy.aspx?type=elev&elevid=${student.studentId}");
    var req = await lppDio.getUri(Uri.parse(url));
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
