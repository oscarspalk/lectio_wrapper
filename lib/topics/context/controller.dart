import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/topics/context/scraping.dart';
import 'package:lectio_wrapper/types/context/context.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

final RegExp studentUserOrTeacherRegex = RegExp("S|U|T");

class ContextController extends Controller {
  ContextController(super.student);

  List<Context> contexts = [];

  Future<Context> get(String id) async {
    var matches = contexts.where((element) => element.id == id);
    Context context = Context('');
    if (matches.isNotEmpty) {
      return matches.first;
    }
    var url =
        student.buildUrl("contextcard/contextcard.aspx?lectiocontextcard=$id");
    var response = await request(url);
    var soup = BeautifulSoup(response.data);
    if (id.startsWith('HE')) {
      context = extractTeamContext(soup, id);
    } else if (id.startsWith(studentUserOrTeacherRegex)) {
      context = extractStudentContext(soup, id);
    } else if (id.startsWith("G")) {
      context = extractGroupContext(soup);
    }
    contexts.add(context);
    return context;
  }
}
