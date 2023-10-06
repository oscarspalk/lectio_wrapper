import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:dio/dio.dart';
import 'package:lectio_wrapper/topics/messages/scraping.dart';
import 'package:lectio_wrapper/topics/messages/threads/controller.dart';
import 'package:lectio_wrapper/types/message/message.dart';
import 'package:lectio_wrapper/types/message/meta/meta.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

class MesssageController extends Controller {
  late ThreadsController threads;
  MesssageController(super.student) {
    threads = ThreadsController(student);
  }

  Future<List<MessageRef>> list() async {
    var url = student.buildUrl("beskeder2.aspx?elevid=${student.studentId}");
    var response = await request(url);
    var stateSoup = BeautifulSoup(response.data);
    return extractMessages(stateSoup);
  }

  Future<Message?> get(MessageRef ref) async {
    var url = student
        .buildUrl("beskeder2.aspx?type=liste&elevid=${student.studentId}");
    var customData = {
      "__EVENTARGUMENT": r"$LB2$_MC_$_62382303765",
      r"s$m$Content$Content$ListGridSelectionTree$folders": "-70",
    };
    var response = await postLoggedInPageSoup(url, "__Page", customData);
    if (response != null) {
      return extractMessage(response, ref);
    }
    return null;
  }

  Future<BeautifulSoup> newMessage() async {
    String newMessageUrl = student
        .buildUrl("beskeder2.aspx?type=nybesked&elevid=${student.studentId}");
    var resp = await request(newMessageUrl);
    return BeautifulSoup(resp.data);
  }

  Future<void> create(CreateMessage createMessage) async {
    BeautifulSoup latestSoup = await newMessage();

    // add people
    for (var person in createMessage.receivers) {
      latestSoup = await _addPerson(person, latestSoup);
    }

    String target = r"s$m$Content$Content$CreateThreadEditMessageOkBtn";
    String url = student
        .buildUrl("beskeder2.aspx?type=liste&elevid=${student.studentId}");
    Map<String, String> submitData = {
      r"s$m$searchinputfield": "",
      r"s$m$Content$Content$addRecipientDD$inp": "",
      r"s$m$Content$Content$addRecipientDD$inpid": "",
      r"s$m$Content$Content$CreateThreadEditMessageTitle$tb":
          createMessage.topic,
      r"s$m$Content$Content$RepliesToThreadOrExistingMessageAllowedChk":
          createMessage.isAnswerable ? "on" : "false",
      r"s$m$Content$Content$CreateThreadAttachDocChooser$selectedDocumentId":
          "",
      r"s$m$Content$Content$CreateThreadEditMessageContent$TbxNAME$tb":
          createMessage.content
    };
    var exportedSubmitData = extractASPData(latestSoup, target);
    exportedSubmitData.addAll(submitData);
    await request(url,
        data: exportedSubmitData,
        options: Options(
          method: 'POST',
          contentType: "application/x-www-form-urlencoded",
        ));
  }

  Future<BeautifulSoup> _addPerson(
      MetaDataEntry person, BeautifulSoup soup) async {
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
    var aspData = extractASPData(soup, target);
    aspData.addAll(data);
    var response = await request(url,
        data: aspData,
        options: Options(
          method: 'POST',
          contentType: "application/x-www-form-urlencoded",
        ));
    return BeautifulSoup(response.data);
  }

  Future<void> delete(Message message) async {
    String target = "__PAGE";
    String url = student
        .buildUrl("beskeder2.aspx?type=liste&elevid=${student.studentId}");
    await postLoggedInPageSoup(
        url, target, {"__EVENTARGUMENT": "HIDEMESSAGE_${message.id}"});
  }

  Future<void> reply(Reply reply) async {
    String url = student.buildUrl(
        "beskeder2.aspx?type=showthread&elevid=${student.studentId}&id=${reply.message.id}");
    String openTarget = "__PAGE";
    Map<String, String> openData = {
      "__EVENTARGUMENT": "ANSWERMESSAGE_${reply.entry.id}"
    };
    var openingSoup = await postLoggedInPageSoup(url, openTarget, openData);
    String target = r"s$m$Content$Content$CreateAnswerOKBtn";
    Map<String, String> data = {
      "__EVENTTARGET": target,
      r"s$m$searchinputfield": "",
      r"s$m$Content$Content$addRecipientToAnswerDD$inp": "",
      r"s$m$Content$Content$addRecipientToAnswerDD$inpid": "",
      r"s$m$Content$Content$Notification": "NotifyBtnAuthor",
      r"s$m$Content$Content$RepliesToResponseAllowed": "on",
      r"s$m$Content$Content$CreateAnswerHeading$tb": reply.topic,
      r"s$m$Content$Content$CreateAnswerDocChooser$selectedDocumentId": "",
      r"s$m$Content$Content$CreateAnswerContent$TbxNAME$tb": reply.content
    };
    var aspData = extractASPData(openingSoup!, target);
    aspData.addAll(data);
    await request(url,
        data: aspData,
        options: Options(
          method: 'POST',
          contentType: "application/x-www-form-urlencoded",
        ));
  }
}
