import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/types/message/message.dart';
import 'package:lectio_wrapper/types/message/meta/meta.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  setUp(() async => {student = await account.login()});

  test('list all messages', () async {
    var messages = await student!.messages.list();
    expect(messages, anyOf(isNotEmpty, isEmpty));
  });

  test('get message', () async {
    var message = await student!.messages
        .get(MessageRef('61043592754', DateTime.now(), "receivers", "topic"));
    expect(message, isNotNull);
  });

  test('create message', () async {
    await student!.messages.create(CreateMessage(
        "Dart", "Flutter is awesome!", true, [
      MetaDataEntry(name: "Oscar Gaardsted Spalk (2bx 12)", id: "S54299107744")
    ]));
  });

  test('delete message', () async {
    await student!.messages.delete(
        Message("61017068482", [], MetaDataEntry(name: '', id: ''), "", ""));
  });

  test('reply to a thread', () async {
    await student!.messages.reply(Reply(
        ThreadEntry('61017078776', DateTime.now(),
            MetaDataEntry(name: 'name', id: 'id'), '', 'topic', [], 0),
        "Wasm",
        Message('61017068542', [], MetaDataEntry(name: '', id: 'id'), '', ''),
        "Rust hele vejen"));
  });

  test('edit a thread entry', () async {
    await student!.messages.edit(Edit(
        ThreadEntry('61017090824', DateTime.now(),
            MetaDataEntry(name: '', id: ''), "Nyt emne", "Ducati", [], 0),
        Message('61017084133', [], MetaDataEntry(name: '', id: ''), '', '')));
  });
}
