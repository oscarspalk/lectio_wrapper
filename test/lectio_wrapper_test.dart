import 'dart:io';

import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/gyms/controller.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  setUp(() async => {student = await account.login(autologin: false)});
  test('login() with true credentials.', () async {
    expect(student, isNotNull);
  });

  test('login() with false credentials.', () async {
    Account fakeAccount = Account(account.gymId, "none", "lol");
    Student? student = await fakeAccount.login(autologin: false);
    expect(student, isNull);
  });

  test(
    'getImage()',
    () async {
      var img = student!.getImage("54828896107");

      expect(img, isNotNull);
    },
  );

  test('listGyms()', () async {
    var gyms = await GymController().list();
    expect(gyms, isNotEmpty);
    expect(gyms[0].id, 51);
    expect(
        gyms.firstWhere((element) => element.name == "Egaa Gymnasium").id, 256);
  });

  test('getFile()', () async {
    var file = await student!.getFile(
        "https://www.lectio.dk/lectio/256/lc/60231186938/res/60231186939/RetteGuide%20Afleveringer%201g.docx%202.docx");
    File lFile = File("/Users/oscar/dev/lectio_wrapper/out/file.docx");
    await lFile.writeAsBytes(file);
    expect(file, isNotEmpty);
  });

  test('getCookies()', () async {
    var cookies = await student!.getCookies();
    expect(cookies, isNotNull);
  });
}
