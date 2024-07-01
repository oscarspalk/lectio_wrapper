import 'dart:io';

import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/grades/scraping.dart';

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

  test('list exam proof', () async {
    var examProof = await student!.grades.getExamProof();
    expect(examProof, isNotNull);
  });

  test('test htx grades', () async {
    var file = File(r"C:\Users\knudi\dev\lectio_wrapper\tests\grades.htm");
    var content = (await file.readAsLines()).join("\n");
    var grades = await extractGrades(BeautifulSoup(content), student!);
    expect(grades, isNotEmpty);
  });
}
