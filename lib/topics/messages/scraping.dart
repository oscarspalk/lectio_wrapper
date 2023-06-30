import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:intl/intl.dart';
import 'package:lectio_wrapper/types/message/message.dart';
import 'package:lectio_wrapper/types/primitives/file.dart';
import 'package:lectio_wrapper/types/primitives/person.dart';

DateFormat dateThreadFormat = DateFormat("dd/MM-yyyy HH:mm");

List<String> weekdays = [
  "mandag",
  "tirsdag",
  "onsdag",
  "torsdag",
  "fredag",
  "lørdag",
  "søndag"
];

List<MessageRef> extractMessages(BeautifulSoup soup) {
  List<MessageRef> messages = [];
  var messageTableParent =
      soup.find("table", id: "s_m_Content_Content_threadGV_ctl00");
  if (messageTableParent != null) {
    var messageTable = messageTableParent.children[0].children;
    messageTable.removeAt(0).decompose();
    DateFormat format = DateFormat("d/M-y");
    DateFormat daFormat = DateFormat("d/M");
    for (var messageRow in messageTable) {
      Bs4Element linkElement = messageRow.children[3].children[0].children[0];
      String postCode = linkElement.getAttrValue("onclick")!;
      int indexOfDollar = postCode.indexOf("_\$_") + 3;
      String id = postCode.substring(
          indexOfDollar, postCode.indexOf('\'', indexOfDollar));
      String topic = messageRow.children[3].text.trim();
      String receivers = messageRow.children[6].text.trim();
      String dateChanged = messageRow.children[7].text;
      DateTime? parsedTime;
      try {
        parsedTime = format.parse(dateChanged);
      } catch (e) {
        try {
          List<String> times = dateChanged.split(" ");
          parsedTime = daFormat.parse(times[1]);
          parsedTime = parsedTime.copyWith(year: DateTime.now().year);
        } catch (e) {
          try {
            parsedTime = DateFormat("HH:mm").parse(dateChanged);
            var now = DateTime.now();
            parsedTime = parsedTime.copyWith(
                year: now.year, month: now.month, day: now.day);
          } catch (e) {
            List<String> splittedTimes = dateChanged.split(" ");
            int weekday = weekdays.indexWhere(
                    (element) => element.startsWith(splittedTimes[0])) +
                1;
            parsedTime = DateFormat("HH:mm").parse(splittedTimes[1]);
            var now = DateTime.now();
            int weekdayDifference = now.weekday - weekday;
            var realDate = now.subtract(Duration(days: weekdayDifference));
            parsedTime = parsedTime.copyWith(
                year: realDate.year, month: realDate.month, day: realDate.day);
          }
        }
      }
      messages.add(MessageRef(id, parsedTime, receivers, topic));
    }
  }
  return messages;
}

Message extractMessage(BeautifulSoup soup) {
  Bs4Element printTable = soup.find("*", id: 'printmessagearea')!;
  List<Bs4Element> infoTableRows = printTable
      .children[0].children[0].children[0].children[0].children[0].children;
  String topic = infoTableRows[0]
      .children[0]
      .children[0]
      .children[0]
      .children[0]
      .children[1]
      .text;
  Bs4Element senderAndReceiverElement =
      infoTableRows[1].children[0].children[0].children[0];
  String receivers =
      senderAndReceiverElement.children[1].text.replaceAll("Til:", "").trim();
  Bs4Element senderElement =
      senderAndReceiverElement.children[0].children[2].children[0];
  Person sender = Person(senderElement.text,
      senderElement.getAttrValue("data-lectiocontextcard")!);
  List<ThreadEntry> thread = [];
  Bs4Element threadTable =
      soup.find('*', id: 's_m_Content_Content_ThreadList')!;
  for (var entry in threadTable.children) {
    thread.add(extractMessageThread(entry));
  }
  return Message(thread, sender, receivers, topic);
}

ThreadEntry extractMessageThread(Bs4Element threadListItem) {
  String content = threadListItem.children[1].text.trim();
  Bs4Element messageElement =
      threadListItem.children[0].children[0].children[0].children[0];
  String messageInfo = messageElement.text;
  List<File> files = [];
  List<Bs4Element> fileLinks =
      messageElement.children.where((element) => element.name == 'a').toList();
  for (var fileLink in fileLinks) {
    files.add(File(fileLink.getAttrValue("href")!, fileLink.text));
  }
  List<String> infos = messageInfo.split("Af");
  String topic = infos[0].trim();
  List<String> infosSplittedAgain = infos[1].split(", ");
  DateTime at = dateThreadFormat.parse(infosSplittedAgain[1]);
  Person user = Person(infosSplittedAgain[0],
      messageElement.children[1].getAttrValue('data-lectiocontextcard')!);
  return ThreadEntry(at, user, content, topic, files);
}
