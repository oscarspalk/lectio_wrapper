import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/types/message/message.dart';

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
        .get(MessageRef('60819271614', DateTime.now(), "receivers", "topic"));
    expect(message, isNotNull);
  });
}
