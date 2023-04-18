import 'dart:io';
import 'dart:typed_data';

import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio/basic_info.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/types/class.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['gymId']!), env['username']!, env['password']!);
  test('login() with true credentials.', () async {
    Student? student = await account.login();
    expect(student, isNotNull);
  });

  test('login() with false credentials.', () async {
    Account fakeAccount = Account(account.gymId, "none", "lol");
    Student? student = await fakeAccount.login();
    expect(student, isNull);
  });

  test('getHomework()', () async {
    Student? student = await account.login();
    var homework = await student!.getHomework();
    expect(homework, isNotEmpty);
  });

  test('getCalendar()', () async {
    Student? student = await account.login();
    var calendar = await student!.getCalendar(2023, 1);
    expect(calendar.days, isNotEmpty);
  });

  test('getAssignments()', () async {
    Student? student = await account.login();
    var assignments = await student!.getAssignments(2023);
    expect(assignments, isNotEmpty);
  });

  test(
    'getImage()',
    () async {
      Student? student = await account.login();
      var img = await student!.getImage("54828896107");
      expect(img, isNotEmpty);
    },
  );

  test(
    'getClasses()',
    () async {
      Student? student = await account.login();
      List<Class> classes = await student!.getClasses();
      print("hello world");
      String basePath = "C:/Users/knudi/Desktop/dev/lectio_wrapper/output/";

      for (var classe in classes) {
        Directory dir = Directory(basePath + classe.name);
        await dir.create();
        for (var tStudent in classe.students) {
          BasicInfo basicInfo = await tStudent.getBasicInfo();
          if (basicInfo.pictureId != "") {
            Uint8List buffer = await tStudent.getImage(basicInfo.pictureId);
            File file = File("$basePath${classe.name}/${basicInfo.name}.jpg");
            await file.create();
            await file.writeAsBytes(buffer);
          }
        }
      }
    },
  );

  test(
    'getMessages()',
    () async {
      Student? student = await account.login();
      var messages = await student!.getMessages();
      expect(messages, isNotEmpty);
    },
  );
}
