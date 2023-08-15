import 'package:lectio_wrapper/types/message/message.dart';

class OpenedEdit {
  Map<String, String> stateData;
  String content;
  String topic;
  OpenedEdit(this.stateData, this.content, this.topic);
}

class Edit {
  ThreadEntry entry;
  Message message;
  Edit(this.entry, this.message);
}
