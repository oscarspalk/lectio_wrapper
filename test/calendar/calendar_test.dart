import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/types/weeks/calendar_event.dart';

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
    var eventDetails = await student!.events.expand(CalendarEvent(
        "",
        "title",
        "team",
        "teacher",
        "room",
        "58747133996",
        DateTime.now(),
        DateTime.now(),
        note: ""));
    var eventDetails2 = await student!.events.expand(CalendarEvent(
        "",
        "title",
        "team",
        "teacher",
        "room",
        "56314100155",
        DateTime.now(),
        DateTime.now(),
        note: ""));
    var eventDetails3 = await student!.events.expand(CalendarEvent(
        "",
        "title",
        "team",
        "teacher",
        "room",
        "58920954961",
        type: CalendarEventType.test,
        DateTime.now(),
        DateTime.now(),
        note: ""));
    var eventDetails4 = await student!.events.expand(CalendarEvent(
        "",
        "title",
        "team",
        "teacher",
        "room",
        "60630603994",
        type: CalendarEventType.private,
        DateTime.now(),
        DateTime.now(),
        note: ""));

    expect(eventDetails, isNotNull);
    expect(eventDetails2, isNotNull);
    expect(eventDetails4, isNotNull);
    expect(eventDetails3, isNotNull);
  });
}
