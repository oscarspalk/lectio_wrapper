import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:intl/intl.dart';
import 'package:lectio_wrapper/types/message.dart';

Future<List<Message>> extractMessages(BeautifulSoup soup) async {
  List<Message> messages = [];
  var messageTableParent =
      soup.find("table", id: "s_m_Content_Content_threadGV_ctl00");
  if (messageTableParent != null) {
    var messageTable = messageTableParent.children[0].children;
    messageTable.removeAt(0).decompose();
    DateFormat format = DateFormat("d/M-y");
    DateFormat daFormat = DateFormat("d/M");
    for (var messageRow in messageTable) {
      String messageLink =
          messageRow.children[3].children[0].children[0].getAttrValue("href")!;
      String topic = messageRow.children[3].text;
      String receivers = messageRow.children[6].text;
      String dateChanged = messageRow.children[7].text;
      DateTime? parsedTime;
      try {
        parsedTime = format.parse(dateChanged);
      } catch (e) {
        List<String> times = dateChanged.split(" ");
        parsedTime = daFormat.parse(times[1]);
        parsedTime = parsedTime.copyWith(year: DateTime.now().year);
      }
      messages.add(Message(messageLink, parsedTime, receivers, topic));
    }
  }
  return messages;
}
