import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/topics/weeks/scraping.dart';
import 'package:lectio_wrapper/types/weeks/calendar_event.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

class WeekController extends Controller {
  WeekController(super.student);

  Future<Week> get(int year, int week, {Week? debugWeek}) async {
    if (student.demo) {
      var faker = Faker.instance;
      var now = DateTime.now();
      return Week(
          days: [
            Day(informations: [
              "Something happens"
            ], events: [
              CalendarEvent(
                  type: CalendarEventType.regular,
                  status: "Uændret",
                  title: "Prøve i differentialligninger",
                  team: "Matematik",
                  teachers: [],
                  room: "10",
                  id: "fefef",
                  note: "",
                  start: now.copyWith(hour: 8, minute: 15),
                  end: now.copyWith(hour: 9, minute: 30),
                  hasHomework: true,
                  hasNote: true,
                  teacherObjs: [],
                  teamObjs: []),
              CalendarEvent(
                  type: CalendarEventType.regular,
                  status: "Uændret",
                  title: "Prøve i differentialregning",
                  team: "Matematik",
                  teachers: [],
                  room: "10",
                  id: "fefef",
                  note: "",
                  start: now.copyWith(hour: 9, minute: 35),
                  end: now.copyWith(hour: 11, minute: 00),
                  hasHomework: true,
                  hasNote: true,
                  teacherObjs: [],
                  teamObjs: []),
              CalendarEvent(
                  type: CalendarEventType.regular,
                  status: "Uændret",
                  title: "Camus",
                  team: "Dansk",
                  teachers: [],
                  room: "19",
                  id: "fefef",
                  note: "",
                  start: now.copyWith(hour: 11, minute: 05),
                  end: now.copyWith(hour: 12, minute: 30),
                  hasHomework: true,
                  hasNote: true,
                  teacherObjs: [],
                  teamObjs: []),
              CalendarEvent(
                  type: CalendarEventType.regular,
                  status: "Uændret",
                  title: "Eksistentialisme",
                  team: "Dansk",
                  teachers: [],
                  room: "19",
                  id: "fefef",
                  note: "",
                  start: now.copyWith(hour: 13, minute: 05),
                  end: now.copyWith(hour: 14, minute: 30),
                  hasHomework: true,
                  hasNote: true,
                  teacherObjs: [],
                  teamObjs: []),
              CalendarEvent(
                  type: CalendarEventType.regular,
                  status: "Uændret",
                  title: "Danmark som kolonimagt i Afrika",
                  team: "Historie",
                  teachers: [],
                  room: "21",
                  id: "fefef",
                  note: "",
                  start: now.copyWith(hour: 14, minute: 35),
                  end: now.copyWith(hour: 16, minute: 00),
                  hasHomework: true,
                  hasNote: true,
                  teacherObjs: [],
                  teamObjs: []),
              CalendarEvent(
                  type: CalendarEventType.regular,
                  status: "Uændret",
                  title: "Delprøve 1.5",
                  team: "Spansk",
                  teachers: [],
                  room: "19",
                  id: "fefef",
                  note: "",
                  start: now.copyWith(hour: 16, minute: 05),
                  end: now.copyWith(hour: 17, minute: 30),
                  hasHomework: true,
                  hasNote: true,
                  teacherObjs: [],
                  teamObjs: []),
            ], date: DateTime.now()),
            Day(informations: [
              "Something happens"
            ], events: [
              CalendarEvent(
                  type: CalendarEventType.regular,
                  status: "Uændret",
                  title: faker.name.jobType(),
                  team: faker.name.title(),
                  teachers: [],
                  room: "2",
                  id: "",
                  note: "",
                  start: faker.date.past(null),
                  end: faker.date.past(null),
                  hasHomework: false,
                  hasNote: false,
                  teacherObjs: [],
                  teamObjs: [])
            ], date: DateTime.now()),
            Day(informations: [
              "Something happens"
            ], events: [
              CalendarEvent(
                  type: CalendarEventType.regular,
                  status: "Uændret",
                  title: faker.name.jobType(),
                  team: faker.name.title(),
                  teachers: [],
                  room: "2",
                  id: "",
                  note: "",
                  start: faker.date.past(null),
                  end: faker.date.past(null),
                  hasHomework: false,
                  hasNote: false,
                  teacherObjs: [],
                  teamObjs: [])
            ], date: DateTime.now()),
            Day(informations: [
              "Something happens"
            ], events: [
              CalendarEvent(
                  type: CalendarEventType.regular,
                  status: "Uændret",
                  title: faker.name.jobType(),
                  team: faker.name.title(),
                  teachers: [],
                  room: "2",
                  id: "",
                  note: "",
                  start: faker.date.past(null),
                  end: faker.date.past(null),
                  hasHomework: false,
                  hasNote: false,
                  teacherObjs: [],
                  teamObjs: [])
            ], date: DateTime.now()),
            Day(informations: [
              "Something happens"
            ], events: [
              CalendarEvent(
                  type: CalendarEventType.regular,
                  status: "Uændret",
                  title: faker.name.jobType(),
                  team: faker.name.title(),
                  teachers: [],
                  room: "2",
                  id: "",
                  note: "",
                  start: faker.date.past(null),
                  end: faker.date.past(null),
                  hasHomework: false,
                  hasNote: false,
                  teacherObjs: [],
                  teamObjs: [])
            ], date: DateTime.now()),
            Day(informations: [
              "Something happens"
            ], events: [
              CalendarEvent(
                  type: CalendarEventType.regular,
                  status: "Uændret",
                  title: faker.name.jobType(),
                  team: faker.name.title(),
                  teachers: [],
                  room: "2",
                  id: "",
                  note: "",
                  start: faker.date.past(null),
                  end: faker.date.past(null),
                  hasHomework: false,
                  hasNote: false,
                  teacherObjs: [],
                  teamObjs: [])
            ], date: DateTime.now()),
            Day(informations: [
              "Something happens"
            ], events: [
              CalendarEvent(
                  type: CalendarEventType.regular,
                  status: "Uændret",
                  title: faker.name.jobType(),
                  team: faker.name.title(),
                  teachers: [],
                  room: "2",
                  id: "",
                  note: "",
                  start: faker.date.past(null),
                  end: faker.date.past(null),
                  hasHomework: false,
                  hasNote: false,
                  teacherObjs: [],
                  teamObjs: [])
            ], date: DateTime.now())
          ],
          weekNum: week,
          modulRanges: []);
    }
    if (debugWeek != null) {
      return debugWeek;
    }
    var url = student.buildUrl(
        "SkemaNy.aspx?${student.teacher ? "laererid" : "elevid"}=${student.studentId}&week=${intFixed(week, 2)}$year");
    var response = await request(url);
    return await extractCalendar(BeautifulSoup(response.data), year, week);
  }
}
