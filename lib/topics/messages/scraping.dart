import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:intl/intl.dart';
import 'package:lectio_wrapper/types/message/message.dart';
import 'package:lectio_wrapper/types/message/meta/meta.dart';
import 'package:lectio_wrapper/types/primitives/file.dart';
import 'package:lectio_wrapper/utils/dating.dart';

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
    for (var messageRow in messageTable) {
      Bs4Element linkElement = messageRow.children[3].children[0].children[0];
      String postCode = linkElement.getAttrValue("onclick")!;
      int indexOfDollar = postCode.indexOf("_\$_") + 3;
      String id = postCode.substring(
          indexOfDollar, postCode.indexOf('\'', indexOfDollar));
      String topic = messageRow.children[3].text.trim();
      String receivers =
          messageRow.children[5].children[0].getAttrValue('title')!;
      String dateChanged = messageRow.children[7].text;
      DateTime parsedTime = parseLectioDate(dateChanged);
      messages.add(MessageRef(id, parsedTime, topic, receivers));
    }
  }
  return messages;
}

Message extractMessage(BeautifulSoup soup, MessageRef ref) {
  Bs4Element printTable = soup.find("*", id: 'printmessagearea')!;
  List<Bs4Element> infoTableRows = printTable
      .children[0].children[0].children[0].children[0].children[0].children;
  String topic = infoTableRows[0]
      .children[0]
      .children[0]
      .children[0]
      .children[0]
      .children[1]
      .text
      .trim();
  Bs4Element senderAndReceiverElement =
      infoTableRows[1].children[0].children[0].children[0];
  String receivers =
      senderAndReceiverElement.children[1].text.replaceAll("Til:", "").trim();
  Bs4Element senderElement =
      senderAndReceiverElement.children[0].children[2].children[0];
  MetaDataEntry sender = MetaDataEntry(
      name: senderElement.text,
      id: senderElement.getAttrValue("data-lectiocontextcard")!);
  List<ThreadEntry> thread = [];
  Bs4Element threadTable =
      soup.find('*', id: 's_m_Content_Content_ThreadList')!;
  for (var entry in threadTable.children) {
    thread.add(extractMessageThread(entry));
  }
  return Message(ref.id, thread, sender, receivers, topic);
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
  MetaDataEntry user = MetaDataEntry(
      id: messageElement.children[1].getAttrValue('data-lectiocontextcard')!,
      name: infosSplittedAgain[0].trim());
  List<Bs4Element> buttons = threadListItem.findAll('button');
  String answerButtonEvent = buttons[0].getAttrValue("onclick")!;
  String pattern = "ANSWERMESSAGE_";
  int patternMatch = answerButtonEvent.indexOf(pattern) + pattern.length;
  String id = answerButtonEvent.substring(
      patternMatch, answerButtonEvent.indexOf('\');', patternMatch));
  int indent = 0;
  String? cssString = threadListItem.getAttrValue('style');
  if (cssString != null) {
    int lPadIndex = cssString.indexOf(':');
    int lPadEnd = cssString.indexOf('em;');
    if (lPadIndex != -1 && lPadEnd != -1) {
      String numStr = cssString.substring(lPadIndex + 1, lPadEnd);
      double padLeft = double.parse(numStr);
      indent = (padLeft / 1.6).floor();
    }
  }
  return ThreadEntry(id, at, user, content, topic, files, indent);
}
