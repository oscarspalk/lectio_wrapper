import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  setUp(() async => {student = await account.login(autologin: false)});

  test('list students', () async {
    List<Student> totalStream = [];
    var studentsStream = student!.students.list();
    await for (List<Student> student in studentsStream) {
      totalStream.addAll(student);
    }
    expect(totalStream, isNotEmpty);
  });
}
