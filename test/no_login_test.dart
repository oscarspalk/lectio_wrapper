import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';

void main() {
  var env = DotEnv()..load();
  Account defaultAccount =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Account account = Account(
    int.parse(env['GYM_ID']!),
    env['USERNAME']!,
    env['PASSWORD']!,
    loginError: () async {
      return defaultAccount;
    },
  );
  Student? student;

  setUp(() async =>
      {student = await account.loginWithCookies([], "54299107744")});
  test('login() with true credentials.', () async {
    var weeks = await student!.weeks.get(2023, 33);
    expect(student, isNotNull);
    expect(weeks, isNotEmpty);
  });
}
