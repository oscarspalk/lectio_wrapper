import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/messages/scraping.dart';
import 'package:lectio_wrapper/types/message/message.dart';
import 'package:requests/requests.dart';

class MesssageController {
  final Student student;
  MesssageController(this.student);

  Future<List<MessageRef>> list() async {
    var url = student.buildUrl("beskeder2.aspx?elevid=${student.studentId}");
    var response = await Requests.get(url);
    return extractMessages(BeautifulSoup(response.body));
  }

  Future<Message> get(MessageRef ref) async {
    var url = student.buildUrl(
        "beskeder2.aspx?type=showthread&elevid=54299107744&id=${ref.id}");
    var response = await Requests.get(url);
    return extractMessage(BeautifulSoup(response.body));
  }
}
