import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/types/assignment.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  setUp(() async => {student = await account.login(autologin: false)});

  test('list assignments', () async {
    var assignments = await student!.assignments.list();
    expect(assignments, isNotEmpty);
  });

  test('get assignment', () async {
    var assignment = await student!.assignments.get(AssignmentRef(
        week: 1,
        team: " ",
        title: "",
        deadline: DateTime.now(),
        studentTime: 3,
        status: "",
        absence: "",
        taskNote: "taskNote",
        id: "61159044212"));

    expect(assignment, isNotNull);
  });
}
