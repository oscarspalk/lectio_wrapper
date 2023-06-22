import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/messages/scraping.dart';
import 'package:lectio_wrapper/types/message/message.dart';
import 'package:lectio_wrapper/types/primitives/person.dart';
import 'package:lectio_wrapper/utils/scraping.dart';
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

  Future<void> create(CreateMessage createMessage) async {
    // open message
    String messageTarget = r"s$m$Content$Content$NewMessageLnk";
    String messageUrl = student
        .buildUrl("beskeder2.aspx?type=nybesked&elevid=${student.studentId}");
    Map<String, String> messageData = {
      r"s$m$ChooseTerm$term": "2022",
      r"s$m$searchinputfield": "",
      r"s$m$Content$Content$ListGridSelectionTree$folders": "-70",
      r"s$m$Content$Content$SPSearchText$tb": "",
      r"s$m$Content$Content$MarkChkDD": "-1"
    };
    await Requests.get(messageUrl);

    // add people
    for (var person in createMessage.receivers) {
      await _addPerson(person);
    }

    String target = r"s$m$Content$Content$CreateThreadEditMessageOkBtn";
    String url = student
        .buildUrl("beskeder2.aspx?type=liste&elevid=${student.studentId}");
    Map<String, String> data = {
      r"s$m$searchinputfield": "",
      r"s$m$Content$Content$addRecipientDD$inp": "",
      r"s$m$Content$Content$addRecipientDD$inpid": "",
      r"s$m$Content$Content$CreateThreadEditMessageTitle$tb":
          createMessage.topic,
      r"s$m$Content$Content$RepliesToThreadOrExistingMessageAllowedChk":
          createMessage.isAnswerable ? "on" : "off",
      r"s$m$Content$Content$CreateThreadAttachDocChooser$selectedDocumentId":
          "",
      r"s$m$Content$Content$CreateThreadEditMessageContent$TbxNAME$tb":
          createMessage.content
    };
    await postLoggedInPageSoup(url, target, data);
  }

  Future<void> _addPerson(Person person) async {
    String target = r"s$m$Content$Content$CreateThreadRelatedAddButton";
    String url = student
        .buildUrl("beskeder2.aspx?type=liste&elevid=${student.studentId}");
    Map<String, String> data = {
      r"s$m$searchinputfield": "",
      r"s$m$Content$Content$addRecipientDD$inp": person.name,
      r"s$m$Content$Content$addRecipientDD$inpid": person.id,
      r"s$m$Content$Content$CreateThreadEditMessageTitle$tb": "",
      r"s$m$Content$Content$RepliesToThreadOrExistingMessageAllowedChk": "on",
      r"s$m$Content$Content$CreateThreadAttachDocChooser$selectedDocumentId":
          "",
      r"s$m$Content$Content$CreateThreadEditMessageContent$TbxNAME$tb": ""
    };
    await postLoggedInPageSoup(url, target, data);
  }
}
