import 'dart:io';

import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  const cook =
      "lectiogsc=f210e417-3b8f-c66f-98e5-bf787b11fe8e,ASP.NET_SessionId=HMSM2P7N54IC3FPCAPKUQFUCX5XI6CKAOMVYMTBFXIBEWMA3KT7CAIBA,LastLoginExamno=256,autologinkey=LQ1ZxWWMclbQJG6BCqkPLWAPMPBXQcHHzM6LbS4h";
  setUp(() async => {
        student = await account.loginWithCookies(
            cook.split(',').map((e) {
              var cookSplit = e.split("=");
              return Cookie(cookSplit[0], cookSplit[1]);
            }).toList(),
            "54299107744")
      });
  test('login() with true credentials.', () async {
    await student!.weeks.get(2023, 31);
    expect(student, isNotNull);
  });
}
