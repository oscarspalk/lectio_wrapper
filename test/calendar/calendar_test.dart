import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  setUp(() async => {student = await account.login()});

  test('list weeks', () async {
    var calendar = await student!.weeks.get(2023, 26);
    expect(calendar.days, isNotEmpty);
  });

  test('getCalendarEventDetails', () async {
    throw "Need implementation";
  });
}
