import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/types/weeks/calendar_event.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  setUp(() async => {student = await account.login(autologin: false)});

  test('list weeks', () async {
    var calendar = await student!.weeks.get(2023, 26);
    expect(calendar.days, isNotEmpty);
  });

  test('getCalendarEventDetails', () async {
    var item = await student!.events.expand(CalendarEvent(
        type: CalendarEventType.regular,
        status: "Aflyst",
        title: "",
        team: "",
        teacher: "",
        room: "",
        id: "56314063041",
        note: "",
        start: DateTime.now(),
        end: DateTime.now()));
    expect(item, isNotNull);
  });
}
