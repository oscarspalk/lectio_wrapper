import 'package:lectio_wrapper/types/message/meta/meta.dart';
import 'package:lectio_wrapper/types/primitives/file.dart';

class MessageRef {
  int folderId;
  String id;
  String topic;
  DateTime dateChanged;
  String sender;
  String normalizedId;
  MessageRef(this.id, this.dateChanged, this.topic, this.sender, this.folderId,
      this.normalizedId);
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
  List<MetaDataEntry> receivers;
  List<ThreadEntry> thread;
  MessageRef ref;
  Message(this.id, this.thread, this.receivers, this.ref);
}

class ThreadEntry {
  DateTime at;
  MetaDataEntry user;
  String content;
  String topic;
  List<File>? files;
  ThreadEntry(this.at, this.user, this.content, this.topic, this.files);
}
