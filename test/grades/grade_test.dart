import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  setUp(() async => {student = await account.login(autologin: false)});

  test('list all grades', () async {
    var grades = await student!.grades.list();
    expect(grades, anyOf(isNotEmpty, isEmpty));
  });

  test('list all grade notes', () async {
    var gradeNotes = await student!.grades.notes.list();
    expect(gradeNotes, anyOf(isNotEmpty, isEmpty));
  });
}
