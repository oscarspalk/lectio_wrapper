import 'dart:convert';

import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:dio/dio.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/messages/scraping.dart';
import 'package:lectio_wrapper/types/message/message.dart';
import 'package:lectio_wrapper/types/primitives/person.dart';
import 'package:lectio_wrapper/utils/scraping.dart';
import 'package:requests/requests.dart';
import 'package:http/http.dart' as http;

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
        .buildUrl("beskeder2.aspx?type=liste&elevid=${student.studentId}");
    String newTarget = r"s$m$Content$Content$NewMessageLnk";
    var createNewResp = await postLoggedInPageSoup(messageUrl, newTarget, {
      r"s$m$ChooseTerm$term": "2022",
      r"s$m$searchinputfield": "",
      r"s$m$Content$Content$ListGridSelectionTree$folders": "-70",
      r"s$m$Content$Content$SPSearchText$tb": "",
      r"s$m$Content$Content$MarkChkDD": "-1"
    });
    var maybeSoup = createNewResp ?? BeautifulSoup("");
    soups.add(maybeSoup);
    var exportedData = await extractASPData(
        maybeSoup, r"s$m$Content$Content$CreateThreadRelatedAddButton");
    Map<String, String> data = {
      r"s$m$searchinputfield": "",
      r"s$m$Content$Content$addRecipientDD$inp":
          "Oscar+Gaardsted+Spalk+%282bx+12%29",
      r"s$m$Content$Content$addRecipientDD$inpid": "S54299107744",
      r"s$m$Content$Content$CreateThreadEditMessageTitle$tb": "",
      r"s$m$Content$Content$RepliesToThreadOrExistingMessageAllowedChk": "on",
      r"s$m$Content$Content$CreateThreadAttachDocChooser$selectedDocumentId":
          "",
      r"s$m$Content$Content$CreateThreadEditMessageContent$TbxNAME$tb": ""
    };
    /*Map<String, String> data = {
      r"s$m$searchinputfield": "",
      r"s$m$Content$Content$addRecipientDD$inp": "",
      r"s$m$Content$Content$addRecipientDD$inpid": "",
      r"s$m$Content$Content$CreateThreadEditMessageTitle$tb": "hello world",
      r"s$m$Content$Content$RepliesToThreadOrExistingMessageAllowedChk": "on",
      r"s$m$Content$Content$CreateThreadAttachDocChooser$selectedDocumentId":
          "",
      r"s$m$Content$Content$CreateThreadEditMessageContent$TbxNAME$tb":
          "hej peter"
    };*/
    exportedData.addAll(data);
    var export = exportedData.entries
        .map((e) => "${e.key}:${e.value}")
        .toList()
        .join("\n");
    var cookieExport = (await student.getCookies())
        .values
        .map((e) => "${e.name}=${e.value}")
        .join(";");
    final dio = Dio();
    var response = await dio.postUri(
        Uri.parse(
            "https://www.lectio.dk/lectio/256/beskeder2.aspx?type=liste&elevid=54299107744"),
        data: exportedData,
        options: Options(
            contentType: "application/x-www-form-urlencoded",
            followRedirects: true,
            headers: {"Cookie": cookieExport}));
    var personSoup = BeautifulSoup(response.data);
    soups.add(personSoup);
    /*
    // add people
    for (var person in createMessage.receivers) {
      var maybeSouppy = await _addPerson(
        person,
        maybeSoup,
      );
      if (maybeSouppy != null) {
        soups.add(maybeSouppy);
      }
    }
  */
    String target = r"s$m$Content$Content$CreateThreadEditMessageOkBtn";
    String url = student
        .buildUrl("beskeder2.aspx?type=liste&elevid=${student.studentId}");
    Map<String, String> submitData = {
      r"s$m$searchinputfield": "",
      r"s$m$Content$Content$addRecipientDD$inp": "",
      r"s$m$Content$Content$addRecipientDD$inpid": "",
      r"s$m$Content$Content$CreateThreadEditMessageTitle$tb": "hello world",
      r"s$m$Content$Content$RepliesToThreadOrExistingMessageAllowedChk": "on",
      r"s$m$Content$Content$CreateThreadAttachDocChooser$selectedDocumentId":
          "",
      r"s$m$Content$Content$CreateThreadEditMessageContent$TbxNAME$tb":
          "hej peter"
    };
    var exportedSubmitData = await extractASPData(maybeSoup, target);
    exportedSubmitData.addAll(submitData);
    var submitResponse = await dio.postUri(
        Uri.parse(
            "https://www.lectio.dk/lectio/256/beskeder2.aspx?type=liste&elevid=54299107744"),
        data: exportedSubmitData,
        options: Options(
            contentType: "application/x-www-form-urlencoded",
            followRedirects: true,
            headers: {"Cookie": cookieExport}));
    var maybeSoup2 = BeautifulSoup(submitResponse.data);
    soups.add(maybeSoup2);

    return soups;
  }

  Future<BeautifulSoup?> _addPerson(
    Person person,
    BeautifulSoup soup,
  ) async {
    String target = r"s$m$Content$Content$CreateThreadRelatedAddButton";
    String url = student
        .buildUrl("beskeder2.aspx?type=liste&elevid=${student.studentId}");
    var aspData = await extractASPData(soup, target);
    Map<String, String> data = {
      r"s$m$searchinputfield": "",
      r"s$m$Content$Content$addRecipientDD$inp":
          "Oscar+Gaardsted+Spalk+%282bx+12%29",
      r"s$m$Content$Content$addRecipientDD$inpid": "S54299107744",
      r"s$m$Content$Content$CreateThreadEditMessageTitle$tb": "",
      r"s$m$Content$Content$RepliesToThreadOrExistingMessageAllowedChk": "on",
      r"s$m$Content$Content$CreateThreadAttachDocChooser$selectedDocumentId":
          "",
      r"s$m$Content$Content$CreateThreadEditMessageContent$TbxNAME$tb": ""
    };
    aspData.addAll(data);
    return BeautifulSoup((await Requests.post(url, body: aspData)).body);
  }
}
