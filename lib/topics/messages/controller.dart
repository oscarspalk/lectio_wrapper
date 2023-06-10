import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/messages/scraping.dart';
import 'package:requests/requests.dart';

class MesssageController {
  final Student student;
  MesssageController(this.student);

  Future<List<Message>> list() async {
    var url = student.buildUrl("beskeder2.aspx?elevid=${student.studentId}");
    var response = await Requests.get(url);
    return await extractMessages(BeautifulSoup(response.body));
  }

  Future<List<dynamic>> get(String messageId) async {
    throw "no implementation";
  }
}
