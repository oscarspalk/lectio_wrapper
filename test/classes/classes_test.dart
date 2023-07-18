import 'package:dotenv/dotenv.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/types/class.dart';
import 'package:test/test.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  setUp(() async => {student = await account.login()});

  test('list classes', () async {
    var classes = await student!.classes.list();
    expect(classes, isNotEmpty);
  });

  test(
    'get class',
    () async {
      var klasse = await student!.classes.get(ClassRef("1bx", "55788763869"));
      expect(klasse, isNotNull);
    },
  );
}
