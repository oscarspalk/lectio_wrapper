import 'package:lectio_wrapper/types/primitives/file.dart';
import 'package:lectio_wrapper/types/primitives/person.dart';

class MessageRef {
  String id;
  String topic;
  DateTime dateChanged;
  String receivers;
  MessageRef(this.id, this.dateChanged, this.receivers, this.topic);
}

class Message {
  String topic;
  Person sender;
  String receivers;
  List<ThreadEntry> thread;
  Message(this.thread, this.sender, this.receivers, this.topic);
}

class ThreadEntry {
  DateTime at;
  Person user;
  String content;
  String topic;
  List<File>? files;
  ThreadEntry(this.at, this.user, this.content, this.topic, this.files);
}
