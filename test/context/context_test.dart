import 'package:dotenv/dotenv.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:test/test.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  setUp(() async => {student = await account.login()});

  test('get team context', () async {
    var context = await student!.context.get("HE53405469334");
    expect(context, isNotNull);
  });

  test('get student context', () async {
    var context = await student!.context.get('U54299107747');
    expect(context, isNotNull);
  });
}
