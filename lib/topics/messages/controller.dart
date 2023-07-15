import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:dio/dio.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/messages/scraping.dart';
import 'package:lectio_wrapper/types/message/message.dart';
import 'package:lectio_wrapper/types/message/meta/meta.dart';
import 'package:lectio_wrapper/utils/scraping.dart';
import 'package:requests/requests.dart';

class MesssageController {
  final Student student;
  final dio = Dio();

  MesssageController(this.student);

  Future<List<MessageRef>> list() async {
    var url = student.buildUrl("beskeder2.aspx?elevid=${student.studentId}");
    var response = await Requests.get(url);
    return extractMessages(BeautifulSoup(response.body));
  }

  Future<Message> get(MessageRef ref) async {
    var url = student.buildUrl(
        "beskeder2.aspx?type=showthread&elevid=${student.studentId}&id=${ref.id}");
    var response = await Requests.get(url);
    return extractMessage(BeautifulSoup(response.body), ref);
  }

  Future<BeautifulSoup> newMessage() async {
    String newMessageUrl = student
        .buildUrl("beskeder2.aspx?type=nybesked&elevid=${student.studentId}");
    var resp = await Requests.get(newMessageUrl);
    return BeautifulSoup(resp.body);
  }

  Future<void> create(CreateMessage createMessage) async {
    BeautifulSoup latestSoup = await newMessage();

    var cookieExport = (await student.getCookies())
        .values
        .map((e) => "${e.name}=${e.value}")
        .join(";");

    // add people
    for (var person in createMessage.receivers) {
      latestSoup = await _addPerson(person, latestSoup, cookieExport);
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
    var exportedSubmitData = await extractASPData(latestSoup, target);
    exportedSubmitData.addAll(submitData);
    await dio.postUri(Uri.parse(url),
        data: exportedSubmitData,
        options: Options(
            contentType: "application/x-www-form-urlencoded",
            followRedirects: true,
            headers: {"Cookie": cookieExport}));
  }

  Future<BeautifulSoup> _addPerson(
      MetaDataEntry person, BeautifulSoup soup, String cookie) async {
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
    var aspData = await extractASPData(soup, target);
    aspData.addAll(data);
    var response = await dio.postUri(Uri.parse(url),
        data: aspData,
        options: Options(
            contentType: "application/x-www-form-urlencoded",
            followRedirects: true,
            headers: {"Cookie": cookie}));
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
    var cookie = (await student.getCookies())
        .values
        .map((e) => "${e.name}=${e.value}")
        .join(";");
    String openUrl = student.buildUrl(
        "beskeder2.aspx?type=showthread&elevid=${student.studentId}&id=${reply.message.id}");
    String openTarget = "__PAGE";
    Map<String, String> openData = {
      "__EVENTARGUMENT": "ANSWERMESSAGE_${reply.entry.id}"
    };
    var openingSoup = await postLoggedInPageSoup(openUrl, openTarget, openData);
    String target = r"s$m$Content$Content$CreateAnswerOKBtn";
    String url = student.buildUrl(
        "beskeder2.aspx?type=showthread&id=${reply.entry.id}&elevid=${student.studentId}");
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
    var aspData = await extractASPData(openingSoup!, target);
    aspData.addAll(data);
    await dio.postUri(Uri.parse(url),
        data: aspData,
        options: Options(
            contentType: "application/x-www-form-urlencoded",
            followRedirects: true,
            headers: {"Cookie": cookie}));
  }

  Future<void> edit(Edit edit) async {
    var cookie = (await student.getCookies())
        .values
        .map((e) => "${e.name}=${e.value}")
        .join(";");
    String openUrl = student.buildUrl(
        "beskeder2.aspx?type=showthread&elevid=${student.studentId}&id=${edit.message.id}");
    String openTarget = "__PAGE";
    Map<String, String> openData = {
      "__EVENTARGUMENT": "EDITMESSAGE_${edit.entry.id}"
    };
    var openingSoup = await postLoggedInPageSoup(openUrl, openTarget, openData);
    String target = r"s$m$Content$Content$CreateThreadEditMessageOkBtn";
    String url = student.buildUrl(
        "beskeder2.aspx?type=showthread&elevid=${student.studentId}&id=${edit.message.id}");
    Map<String, String> data = {
      r"s$m$searchinputfield": "",
      r"s$m$Content$Content$addRecipientDD$inp": "",
      r"s$m$Content$Content$addRecipientDD$inpid": "",
      r"s$m$Content$Content$CreateThreadEditMessageTitle$tb": edit.entry.topic,
      r"s$m$Content$Content$RepliesToThreadOrExistingMessageAllowedChk": "on",
      r"s$m$Content$Content$CreateThreadAttachDocChooser$selectedDocumentId":
          "",
      r"s$m$Content$Content$CreateThreadEditMessageContent$TbxNAME$tb":
          edit.entry.content
    };
    var aspData = await extractASPData(openingSoup!, target);
    aspData.addAll(data);
    await dio.postUri(Uri.parse(url),
        data: aspData,
        options: Options(
            contentType: "application/x-www-form-urlencoded",
            followRedirects: true,
            headers: {"Cookie": cookie}));
  }
}
