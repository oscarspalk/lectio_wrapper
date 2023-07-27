import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/gyms/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  setUp(() async => {student = await account.login()});
  test('login() with true credentials.', () async {
    var cookies =
        await lppCookies.loadForRequest(Uri.parse("https://www.lectio.dk"));
    var cookieString =
        cookies.map((cookie) => "${cookie.name}=${cookie.value}").join(",");
    expect(student, isNotNull);
  });

  test('login() with false credentials.', () async {
    Account fakeAccount = Account(account.gymId, "none", "lol");
    Student? student = await fakeAccount.login();
    expect(student, isNull);
  });

  test('getHomework()', () async {
    var homework = await student!.homework.list();
    expect(homework, anyOf([isEmpty, isNotEmpty]));
  });

  test(
    'getImage()',
    () async {
      var img = await student!.getImage("54828896107");
      expect(img, isNotEmpty);
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
    expect(file, isNotEmpty);
  });

  test('getCookies()', () async {
    var cookies = await student!.getCookies();
    expect(cookies, isNotNull);
  });
}
