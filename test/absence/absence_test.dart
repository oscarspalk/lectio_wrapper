import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/types/absence/cause.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  setUp(() async => {student = await account.login()});

  test('list all absence', () async {
    var absence = await student!.absence.list();
    expect(absence, anyOf(isNotEmpty, isEmpty));
  });

  test('list all absences registrations', () async {
    var registrations = await student!.absence.registrations.list();
    expect(registrations, isNotEmpty);
  });

  test('update absence entry', () async {
    var registrations = await student!.absence.registrations.list();

    await student!.absence.registrations
        .update(registrations.elementAt(0), AbsenceCauses.sick, "");
  });
}
