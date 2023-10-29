import 'package:dio/dio.dart';
import 'package:lectio_wrapper/types/message/message.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

String _formatNumberWide(int i) {
  if (i < 10) {
    return "0$i";
  }
  return "$i";
}

String _calculateIdNumberFromThreadAndMessage(
    ThreadEntry? entry, Message message) {
  int startingN = 2;
  int completeNumber;
  if (entry != null) {
    int indexOfThread = message.thread.indexOf(entry);
    completeNumber = startingN + indexOfThread;
  } else {
    completeNumber = startingN + message.thread.length;
  }

  return _formatNumberWide(completeNumber);
}

class ThreadsController extends Controller {
  ThreadsController(super.student);

  Future<void> reply(Reply reply) async {
    var updatedMessage = await student.messages.get(reply.message.ref);
    if (updatedMessage == null) {
      return;
    }
    String id = _calculateIdNumberFromThreadAndMessage(null, updatedMessage);
    String url = student.buildUrl("beskeder2.aspx");
    String openingUrl = student
        .buildUrl("beskeder2.aspx?mappeid=${reply.message.ref.folderId}");
    var openingSoup = await postLoggedInPageSoup(openingUrl, "__Page", {
      r"__EVENTARGUMENT": reply.message.ref.id,
      r"s$m$Content$Content$ListGridSelectionTree$folders":
          reply.message.ref.folderId.toString()
    });
    String target = r"s$m$Content$Content$MessageThreadCtrl$MessagesGV$ctl" +
        id +
        r"$SendMessageBtn";
    Map<String, String> data = {
      r"s$m$searchinputfield": "",
      r"s$m$Content$Content$ListGridSelectionTree$folders":
          reply.message.ref.folderId.toString(),
      r"s$m$Content$Content$MessageThreadCtrl$MessagesGV$ctl" +
          id +
          r"$EditModeHeaderTitleTB$tb": reply.topic,
      r"s$m$Content$Content$MessageThreadCtrl$MessagesGV$ctl" +
          id +
          r"$AttachmentDocChooser$selectedDocumentId": "",
      r"s$m$Content$Content$MessageThreadCtrl$MessagesGV$ctl" +
          id +
          r"$EditModeContentBBTB$TbxNAME$tb": reply.content
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
