import 'package:dotenv/dotenv.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:test/test.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  setUp(() async => {student = await account.login()});

  test('Create private appointment', () async {
    await student!.events.private.create(CalendarEvent("", "TestApi", "", "",
        "", "", DateTime.now(), DateTime.now().add(const Duration(hours: 2)),
        note: "Hello World"));
  });

  test('Delete private appointment', () async {
    await student!.events.private.delete(CalendarEvent(
        "",
        "TestApi",
        "",
        "",
        "",
        "60630602322",
        DateTime.now(),
        DateTime.now().add(const Duration(hours: 2)),
        note: "Hello World"));
  });

  test('Update private appointment', () async {
    await student!.events.private.update(CalendarEvent(
        "",
        "title",
        "team",
        "teacher",
        "room",
        "60630603994",
        DateTime.now(),
        DateTime.now().add(const Duration(hours: 1)),
        note: "Nu står der det her"));
  });
}
