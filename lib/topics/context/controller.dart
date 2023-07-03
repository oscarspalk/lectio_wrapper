import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/topics/context/scraping.dart';
import 'package:lectio_wrapper/types/context/context.dart';
import 'package:requests/requests.dart';

class ContextController {
  final Student student;
  ContextController(this.student);

  List<Context> contexts = [];

  Future<Context> get(String id) async {
    var matches = contexts.where((element) => element.id == id);
    Context context = Context('');
    if (matches.isNotEmpty) {
      return matches.first;
    }
    var url =
        student.buildUrl("contextcard/contextcard.aspx?lectiocontextcard=$id");
    var response = await Requests.get(url);
    var soup = BeautifulSoup(response.body);
    if (id.startsWith('HE')) {
      context = extractTeamContext(soup, id);
    } else if (id.startsWith('S')) {
      context = extractStudentContext(soup, id);
    }
    contexts.add(context);
    return context;
  }
}
