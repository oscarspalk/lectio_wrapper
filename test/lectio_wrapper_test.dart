
import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/gyms/controller.dart';
import 'package:lectio_wrapper/types/class.dart';
import 'package:lectio_wrapper/types/weeks/calendar_event.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  setUp(() async => {student = await account.login()});
  test('login() with true credentials.', () async {
    expect(student, isNotNull);
  });

  test('login() with false credentials.', () async {
    Account fakeAccount = Account(account.gymId, "none", "lol");
    Student? student = await fakeAccount.login();
    expect(student, isNull);
  });

  test('getHomework()', () async {
    var homework = await student!.homework.list();
    expect(homework, anyOf([isEmpty, isNotEmpty]));
  });

  test('getCalendar()', () async {
    var calendar = await student!.weeks.get(2023, 24);
    expect(calendar.days, isNotEmpty);
  });

  test('getAssignments()', () async {
    var assignments = await student!.assignments.list(2022);
    expect(assignments, isNotEmpty);
  });

  test(
    'getImage()',
    () async {
      var img = await student!.getImage("54828896107");
      expect(img, isNotEmpty);
    },
  );

  test(
    'getMessages()',
    () async {
      var messages = await student!.messages.list();
      expect(messages, anyOf(isNotEmpty, isEmpty));
    },
  );

  test('listGyms()', () async {
    var gyms = await GymController().list();
    expect(gyms, isNotEmpty);
    expect(gyms[0].id, 51);
    expect(
        gyms.firstWhere((element) => element.name == "Egaa Gymnasium").id, 256);
  });

  test('getClasses()', () async {
    var classes = await student!.classes.list();
    expect(classes, isNotEmpty);
  });

  test(
    'getClass()',
    () async {
      var klasse = await student!.classes.get(ClassRef("1bx", "55788763869"));
      expect(klasse, isNotNull);
    },
  );

  test('getCalendarEventDetails', () async {
    var eventDetails = await student!.events.expand(CalendarEvent(
        "",
        "title",
        "team",
        "teacher",
        "room",
        "56314099116",
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
    expect(eventDetails4, isNotNull);
    expect(eventDetails3, isNotNull);
    expect(eventDetails, isNotNull);
    expect(eventDetails2, isNotNull);
  });

  test('getFile()', () async {
    var file = await student!.getFile(
        "https://www.lectio.dk/lectio/256/lc/60231186938/res/60231186939/RetteGuide%20Afleveringer%201g.docx%202.docx");
    expect(file, isNotEmpty);
  });

  test('getCookies()', () async {
    var cookies = await student!.getCookies();
    expect(cookies, isNotNull);
  });

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
