import 'package:dotenv/dotenv.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:test/test.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  setUp(() async => {student = await account.login()});

  test('list students', () async {
    var metaData = await student!.students.get();
    expect(metaData, isNotNull);
  });
}
