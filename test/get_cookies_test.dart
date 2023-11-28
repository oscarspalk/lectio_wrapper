import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';

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
    student = await account.login();
  });
  test('login() with true credentials.', () async {
    expect(student, isNotNull);
  });

  test('getCookies()', () async {
    var cookies = await student!.getCookies();
    //String cookieString = cookies.map((e) => "${e.name}=${e.value}").join(";");
    expect(cookies, isNotNull);
  });
}
