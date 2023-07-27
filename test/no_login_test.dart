import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  const cook =
      "lectiogsc=7b2e4d97-2d24-462b-a30d-ed440c430639,ASP.NET_SessionId=ALU23ZRITMCE6KERM5RDD7XF2TXDSV4UQY4SVTXJSHVNBV4F2UGSAIBA,LastLoginExamno=256";
  setUp(() async => {student = await account.loginWithCookies(cook)});
  test('login() with true credentials.', () async {
    expect(student, isNotNull);
  });
}
