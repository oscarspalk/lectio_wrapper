import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/gyms/controller.dart';

void main() {
  var env = DotEnv()..load();

  Account account = Account(
    int.parse(env['GYM_ID']!),
    env['USERNAME']!,
    env['PASSWORD']!,
    loginError: () async {
      return Account(
          int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
    },
  );
  Student? student;
  setUp(() async {
    //student = await account.loginWithCookies([], "54299107744");
  });

  test('login with mitid', () async {
    student = await account.mitIDLogin();
    expect(student, isNotNull);
  });
  test('login() with true credentials.', () async {
    expect(student, isNotNull);
  });

  test('login() with false credentials.', () async {
    Account fakeAccount = Account(account.gymId, "none", "lol");
    await fakeAccount.login(autologin: false);
  });

  test(
    'getImage()',
    () async {
      var img = student!.getImage("54828896107");
      var img2 = student!.getImage(
          "/lectio/256/lc/61126635686/res/61126635687/mandarin-jokes.jpg");
      expect(img, isNotNull);
      expect(img2, isNotNull);
    },
  );

  test('listGyms()', () async {
    var gyms = await GymController().list();
    expect(gyms, isNotEmpty);
    expect(gyms[0].id, 51);
    expect(
        gyms.firstWhere((element) => element.name == "Egaa Gymnasium").id, 256);
  });

  test('getCookies()', () async {
    var cookies = await student!.getCookies();
    expect(cookies, isNotNull);
  });
}
