import 'dart:io';

import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  const cook = "";

  setUp(() async => {
        student = await account.loginWithCookies(
            cook.split(',').map((e) {
              var cookSplit = e.split("=");
              return Cookie(cookSplit[0], cookSplit[1]);
            }).toList(),
            "54299107744")
      });
  test('login() with true credentials.', () async {
    var weeks = await student!.weeks.get(2023, 33);
    expect(student, isNotNull);
    expect(weeks, isNotEmpty);
  });
}
