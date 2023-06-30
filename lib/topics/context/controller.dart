import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/topics/context/scraping.dart';
import 'package:lectio_wrapper/types/context/team.dart';
import 'package:requests/requests.dart';

class ContextController {
  final Student student;
  ContextController(this.student);

  Future<Context> get(String id) async {
    var url =
        student.buildUrl("contextcard/contextcard.aspx?lectiocontextcard=$id");
    var response = await Requests.get(url);
    var soup = BeautifulSoup(response.body);
    return extractTeamContext(soup);
  }
}
