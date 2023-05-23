import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  setUp(() async => {student = await account.login()});
  test('login() with true credentials.', () async {
    expect(student, isNotNull);
  });

  test('login() with false credentials.', () async {
    Account fakeAccount = Account(account.gymId, "none", "lol");
    Student? student = await fakeAccount.login();
    expect(student, isNull);
  });

  test('getHomework()', () async {
    var homework = await student!.getHomework();
    expect(homework, anyOf([isEmpty, isNotEmpty]));
  });

  test('getCalendar()', () async {
    var calendar = await student!.getCalendar(2023, 1);
    expect(calendar.days, isNotEmpty);
  });

  test('getAssignments()', () async {
    var assignments = await student!.getAssignments(2023);
    expect(assignments, isNotEmpty);
  });

  test(
    'getImage()',
    () async {
      var img = await student!.getImage("54828896107");
      expect(img, isNotEmpty);
    },
  );

  test(
    'getMessages()',
    () async {
      var messages = await student!.getMessages();
      expect(messages, isNotEmpty);
    },
  );

  test('listGyms()', () async {
    var gyms = await listGyms();
    expect(gyms, isNotEmpty);
    expect(gyms[0].id, 51);
    expect(
        gyms.firstWhere((element) => element.name == "Egaa Gymnasium").id, 256);
  });
}
