import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';

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
      var img = await student!.getImage(
          "https://www.lectio.dk/lectio/256/GetImage.aspx?pictureid=54828896107&fullsize=1");
      expect(img, isNotEmpty);
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
