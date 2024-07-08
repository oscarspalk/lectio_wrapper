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

  Future<List<MessageRef>> list({List<MessageRef>? debugMessages}) async {
    if (debugMessages != null) {
      return debugMessages;
    }
    var url = student.buildUrl("beskeder2.aspx?elevid=${student.studentId}");
    var response = await request(url);
    var stateSoup = BeautifulSoup(response.data);
    return extractMessages(stateSoup);
  }

  Future<Message?> get(MessageRef ref) async {
    var url = student.buildUrl("beskeder2.aspx");
    var customData = {
      "__EVENTARGUMENT": ref.id,
      r"s$m$Content$Content$ListGridSelectionTree$folders":
          ref.folderId.toString(),
    };
    var response = await postLoggedInPageSoup(url, "__Page", customData);
    if (response != null) {
      return extractMessage(response, ref);
    }
    return null;
  }

  Future<BeautifulSoup?> newMessage() async {
    String newMessageUrl = student.buildUrl("beskeder2.aspx");
    var resp = await postLoggedInPageSoup(
        newMessageUrl, r"s$m$Content$Content$NewMessageLnk", {});
    return resp;
  }

  Future<void> create(CreateMessage createMessage) async {
    BeautifulSoup? latestSoup = await newMessage();
    if (latestSoup == null) {
      return;
    }
    // add people
    for (var person in createMessage.receivers) {
      latestSoup = await _addPerson(person, latestSoup!);
    }

    String target =
        r"s$m$Content$Content$MessageThreadCtrl$MessagesGV$ctl02$SendMessageBtn";
    String url = student.buildUrl("beskeder2.aspx");
    Map<String, String> submitData = {
      r"s$m$searchinputfield": "",
      r"s$m$Content$Content$MessageThreadCtrl$addRecipientDD$inp": "",
      r"s$m$Content$Content$MessageThreadCtrl$addRecipientDD$inpid": "",
      r"s$m$Content$Content$MessageThreadCtrl$MessagesGV$ctl02$EditModeHeaderTitleTB$tb":
          createMessage.topic,
      r"s$m$Content$Content$MessageThreadCtrl$MessagesGV$ctl02$AttachmentDocChooser$selectedDocumentId":
          "",
      r"s$m$Content$Content$MessageThreadCtrl$MessagesGV$ctl02$EditModeContentBBTB$TbxNAME$tb":
          createMessage.content
    };
    var exportedSubmitData = extractASPData(latestSoup!, target);
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
    String target = r"s$m$Content$Content$MessageThreadCtrl$AddRecipientBtn";
    String url = student
        .buildUrl("beskeder2.aspx?type=liste&elevid=${student.studentId}");
    Map<String, String> data = {
      r"s$m$searchinputfield": "",
      r"s$m$Content$Content$MessageThreadCtrl$addRecipientDD$inp": person.name,
      r"s$m$Content$Content$MessageThreadCtrl$addRecipientDD$inpid": person.id,
      r"s$m$Content$Content$MessageThreadCtrl$MessagesGV$ctl02$EditModeHeaderTitleTB$tb":
          "",
      r"s$m$Content$Content$RepliesToThreadOrExistingMessageAllowedChk": "on",
      r"s$m$Content$Content$MessageThreadCtrl$MessagesGV$ctl02$AttachmentDocChooser$selectedDocumentId":
          "",
      r"s$m$Content$Content$MessageThreadCtrl$MessagesGV$ctl02$EditModeContentBBTB$TbxNAME$tb":
          ""
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
    String target = "__Page";
    String url = student.buildUrl(
        "beskeder2.aspx?elevid=${student.studentId}&selectedfolderid=${message.ref.folderId}");
    await postLoggedInPageSoup(url, target, {
      "__EVENTARGUMENT": "HIDEMESSAGE_${message.ref.normalizedId}",
      r"s$m$Content$Content$ListGridSelectionTree$folders":
          message.ref.folderId.toString()
    });
  }
}
