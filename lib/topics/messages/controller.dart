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

  ///
  /// Not working yet
  ///
  Future<List<BeautifulSoup>> create(CreateMessage createMessage) async {
    List<BeautifulSoup> soups = [];
    // open message
    String messageUrl = student
        .buildUrl("beskeder2.aspx?type=nybesked&elevid=${student.studentId}");

    var createNewResp = await Requests.get(messageUrl);
    var uri = createNewResp.url;
    var maybeSoup = BeautifulSoup((createNewResp).body);
    soups.add(maybeSoup);

    // add people
    for (var person in createMessage.receivers) {
      var maybeSouppy = await _addPerson(person);
      if (maybeSouppy != null) {
        soups.add(maybeSouppy);
      }
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
    var maybeSoup2 = await postLoggedInPageSoup(url, target, data);
    if (maybeSoup2 != null) {
      soups.add(maybeSoup2);
    }
    return soups;
  }

  Future<BeautifulSoup?> _addPerson(Person person) async {
    String target = r"s$m$Content$Content$CreateThreadRelatedAddButton";
    String url =
        student.buildUrl("beskeder2.aspx?type=&elevid=${student.studentId}");
    Map<String, String> data = {
      r"s$m$searchinputfield": "",
      r"s$m$Content$Content$addRecipientDD$inp":
          "Oscar+Gaardsted+Spalk+%281bx+12%29",
      r"s$m$Content$Content$addRecipientDD$inpid": "S54299107744",
      r"s$m$Content$Content$CreateThreadEditMessageTitle$tb": "",
      r"s$m$Content$Content$RepliesToThreadOrExistingMessageAllowedChk": "on",
      r"s$m$Content$Content$CreateThreadAttachDocChooser$selectedDocumentId":
          "",
      r"s$m$Content$Content$CreateThreadEditMessageContent$TbxNAME$tb": ""
    };
    return await postLoggedInPageSoup(url, target, data);
  }
}
