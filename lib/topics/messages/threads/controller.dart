import 'package:dio/dio.dart';
import 'package:lectio_wrapper/topics/messages/threads/scraping.dart';
import 'package:lectio_wrapper/types/message/message.dart';
import 'package:lectio_wrapper/types/message/threads/edit.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

class ThreadsController extends Controller {
  ThreadsController(super.student);
  Future<OpenedEdit> openEdit(ThreadEntry entry, Message message) async {
    String target = r"s$m$Content$Content$CreateThreadEditMessageOkBtn";
    String openUrl = student.buildUrl(
        "beskeder2.aspx?type=showthread&elevid=${student.studentId}&id=${message.id}");
    String openTarget = "__PAGE";
    Map<String, String> openData = {
      "__EVENTARGUMENT": "EDITMESSAGE_${entry.id}"
    };
    var openingSoup = await postLoggedInPageSoup(openUrl, openTarget, openData);
    var stateData = extractASPData(openingSoup!, target);
    return extractContentAndTopic(openingSoup, stateData);
  }

  Future<void> edit(Edit edit, Map<String, String> aspData) async {
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
    aspData.addAll(data);
    await request(url,
        data: aspData,
        options: Options(
          method: 'POST',
          contentType: "application/x-www-form-urlencoded",
        ));
  }
}
