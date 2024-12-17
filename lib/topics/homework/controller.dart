import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/homework/scraping.dart';
import 'package:lectio_wrapper/types/weeks/calendar_event.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

class HomeworkController extends Controller {
  HomeworkController(super.student);

  Future<List<Homework>> list() async {
    if (student.demo) {
      var faker = Faker.instance;
      return [
        Homework(
            dato: faker.date.future(DateTime.now()),
            activity: CalendarEvent(
                type: CalendarEventType.regular,
                status: "Uændret",
                title: faker.name.jobType(),
                team: faker.name.title(),
                teachers: [],
                room: "2",
                id: "",
                note: "",
                start: faker.date.future(null),
                end: faker.date.future(null),
                hasHomework: false,
                hasNote: false,
                teacherObjs: [],
                teamObjs: []),
            note: "Do something")
      ];
    }
    var url = student.buildUrl("material_lektieoversigt.aspx");
    var response = await request(url);
    return await extractHomework(BeautifulSoup(response.data));
  }
}
