import 'package:lectio_wrapper/types/message/meta/meta.dart';
import 'package:lectio_wrapper/types/primitives/file.dart';

class MessageRef {
  String id;
  String topic;
  DateTime dateChanged;
  String sender;
  MessageRef(this.id, this.dateChanged, this.topic, this.sender);
}

class CreateMessage {
  List<MetaDataEntry> receivers;
  String topic;
  String content;
  bool isAnswerable;
  CreateMessage(this.topic, this.content, this.isAnswerable, this.receivers);
}

class Reply {
  ThreadEntry entry;
  Message message;
  String topic;
  String content;
  Reply(this.entry, this.topic, this.message, this.content);
}

class Message {
  String id;
  String topic;
  MetaDataEntry sender;
  String receivers;
  List<ThreadEntry> thread;
  Message(this.id, this.thread, this.sender, this.receivers, this.topic);
}

class ThreadEntry {
  String id;
  DateTime at;
  MetaDataEntry user;
  String content;
  String topic;
  int indent;
  List<File>? files;
  ThreadEntry(this.id, this.at, this.user, this.content, this.topic, this.files,
      this.indent);
}
