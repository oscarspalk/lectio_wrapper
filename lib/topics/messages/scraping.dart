import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:intl/intl.dart';
import 'package:lectio_wrapper/types/message/message.dart';
import 'package:lectio_wrapper/types/message/meta/meta.dart';
import 'package:lectio_wrapper/types/primitives/file.dart';
import 'package:lectio_wrapper/utils/dating.dart';

DateFormat dateThreadFormat = DateFormat("dd-MM-yyyy HH:mm:ss");

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
  var folderIdInput =
      soup.find('*', id: 's_m_Content_Content_ListGridSelectionTree_folders');
  int? folderId = int.tryParse(folderIdInput?.getAttrValue("value") ?? "");
  if (messageTableParent != null && folderId != null) {
    var messageTable = messageTableParent.children[0].children;
    messageTable.removeAt(0).decompose();
    for (var messageRow in messageTable) {
      Bs4Element linkElement = messageRow.children[3].children[0].children[0];
      String postCode = linkElement.getAttrValue("onclick")!;
      int indexOfDollar = postCode.indexOf("\$");
      String id = postCode.substring(
          indexOfDollar, postCode.indexOf('\'', indexOfDollar));
      int indexOfUnderDollar = id.indexOf(r'_$_');
      String normalizedId = id.substring(indexOfUnderDollar + 3);
      String topic = messageRow.children[3].text.trim();
      String receivers =
          messageRow.children[5].children[0].getAttrValue('title')!;
      String dateChanged = messageRow.children[7].text;
      DateTime parsedTime = parseLectioDate(dateChanged);
      messages.add(
          MessageRef(id, parsedTime, topic, receivers, folderId, normalizedId));
    }
  }
  return messages;
}

const lectioContextKey = "data-lectiocontextcard";
final editPattern = RegExp(r"s\$m\$");
final editEndPattern = RegExp(r"\$ctl[[:alnum:]]+\$");
Message? extractMessage(BeautifulSoup soup, MessageRef ref) {
  // extract receivers
  List<MetaDataEntry> receivers = [];
  Bs4Element? receiverField = soup.find('*',
      id: 's_m_Content_Content_MessageThreadCtrl_RecipientsReadMode');
  List<Bs4Element>? receiverSpans = receiverField?.findAll('span');
  if (receiverSpans != null) {
    for (var receiverSpan in receiverSpans) {
      String? id = receiverSpan.getAttrValue(lectioContextKey);
      String name = receiverSpan.text;
      if (id != null) {
        receivers.add(MetaDataEntry(id: id, name: name));
      }
    }
  }

  // extract threads
  List<ThreadEntry> thread = [];
  List<Bs4Element> messageThreads = soup.findAll('*', id: 'GridRowMessage');
  for (int i = 0; i < messageThreads.length; i++) {
    var entry = messageThreads.elementAt(i);

    var extractedEntry = extractMessageThread(entry);
    if (extractedEntry != null) {
      thread.add(extractedEntry);
    }
  }

  return Message(ref.id, thread, receivers, ref);
}

ThreadEntry? extractMessageThread(Bs4Element threadListItem) {
  // extract the topic and the content
  String? topic;
  String? content;
  Bs4Element? topicElement =
      threadListItem.find('*', class_: 'message-thread-message-header');
  Bs4Element? contentElement =
      threadListItem.find('*', class_: 'message-thread-message-content');
  topic = topicElement?.text.trim();
  content = contentElement?.innerHtml.trim();

  // extract info about the message and the sender
  Bs4Element? infoElement =
      threadListItem.find('*', class_: 'message-thread-message-sender');
  Bs4Element? senderElement = infoElement?.find('span');
  String? senderId = senderElement?.getAttrValue(lectioContextKey);
  String? senderName = senderElement?.text;
  MetaDataEntry? sender;
  if (senderId != null && senderName != null) {
    sender = MetaDataEntry(id: senderId, name: senderName);
  }
  String? timestampInfo = infoElement?.text
      .replaceFirst(sender?.name ?? "", "")
      .replaceFirst(',', '')
      .trim();
  DateTime? at;
  if (timestampInfo != null) {
    at = dateThreadFormat.parse(timestampInfo);
  }

  // find files, if there are any
  Bs4Element? fileRow =
      threadListItem.find('*', class_: 'message-attachements');
  List<Bs4Element> fileEntries = fileRow?.findAll('a') ?? [];
  List<File> files = [];
  for (var fileLink in fileEntries) {
    files.add(
        File(href: fileLink.getAttrValue("href") ?? "", name: fileLink.text));
  }

  if (content != null && topic != null && at != null && sender != null) {
    return ThreadEntry(at, sender, content, topic, files);
  }
  return null;
}
