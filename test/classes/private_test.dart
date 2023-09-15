import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/types/weeks/calendar_event.dart';
import 'package:lectio_wrapper/utils/dating.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  setUp(() async => {student = await account.login(autologin: false)});

  test('Crud test', () async {
    var now = DateTime.now();
    var week = weekFromDateTime(now);
    const testTitle = "Flødeboller";
    const testContent = "Smager godt!";
    const testUpdatedTitle = "Fløderboller 2!";
    const testUpdatedContent = "Smager godt og bedre";
    Duration newOffset = const Duration(hours: 1, minutes: 30);
    var calendarEvent = CalendarEvent(
        hasHomework: false,
        hasNote: false,
        teacherObjs: [],
        teamObjs: [],
        type: CalendarEventType.private,
        status: "",
        title: testTitle,
        team: "",
        teachers: [""],
        room: "",
        id: "",
        note: testContent,
        start: now,
        end: now.add(const Duration(hours: 1)));
    await student!.events.private.create(calendarEvent);
    var updatedThisWeek = await student!.weeks.get(now.year, week);
    var events = updatedThisWeek.days
        .firstWhere((element) => element.date.day == now.day)
        .events;
    var event = events.firstWhere((element) => element.title == testTitle);
    expect(event.note, testContent);
    var modifiedCalendarEvent = event.copyWith(
        title: testUpdatedTitle,
        note: testUpdatedContent,
        end: now.add(newOffset));
    await student!.events.private.update(modifiedCalendarEvent);
    var newWeek = await student!.weeks.get(now.year, week);
    var newEvents = newWeek.days
        .firstWhere((element) => element.date.day == now.day)
        .events;
    var newEvent =
        newEvents.firstWhere((element) => element.title == testUpdatedTitle);
    expect(newEvent.note, testUpdatedContent);
    await student!.events.private.delete(newEvent);
    var newUpdatedWeek = await student!.weeks.get(now.year, week);
    var newUpdatedEvents = newUpdatedWeek.days
        .firstWhere((element) => element.date.day == now.day)
        .events;
    var newUpdatedEvent = newUpdatedEvents
        .indexWhere((element) => element.title == testUpdatedTitle);
    expect(newUpdatedEvent, -1);
  });
}
