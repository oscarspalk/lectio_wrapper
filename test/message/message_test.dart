import 'dart:io';

import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/types/message/message.dart';
import 'package:lectio_wrapper/types/primitives/person.dart';

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

  test('create message', () async {
    var soups = await student!.messages.create(CreateMessage(
        "Dart",
        "Flutter is awesome!",
        true,
        [Person("Oscar Gaardsted Spalk (1bx 12)", "S54299107744")]));
    for (var soup in soups) {
      File file = File(r"C:\Users\knudi\Desktop\dev\lectio_wrapper\out\"
          "${soups.indexOf(soup)}"
          ".html");
      await file.writeAsString(soup.prettify());
    }
  });
}
