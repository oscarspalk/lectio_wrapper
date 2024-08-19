import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lectio_wrapper/types/message/meta/meta.dart';
import 'package:lectio_wrapper/types/primitives/file.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class MessageRef with _$MessageRef {
  factory MessageRef(
      {required int folderId,
      required String id,
      required String topic,
      required DateTime dateChanged,
      required String sender,
      required String normalizedId}) = _MessageRef;

  factory MessageRef.fromJson(Map<String, Object?> json) =>
      _$MessageRefFromJson(json);
}

class CreateMessage {
  List<MetaDataEntry> receivers;
  String topic;
  String content;
  CreateMessage(this.topic, this.content, this.receivers);
}

class Reply {
  Message message;
  String topic;
  String content;
  Reply(this.topic, this.message, this.content);
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
