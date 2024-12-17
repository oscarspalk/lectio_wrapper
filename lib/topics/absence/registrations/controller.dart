import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:lectio_wrapper/topics/absence/registrations/scraping.dart';
import 'package:lectio_wrapper/types/absence/cause.dart';
import 'package:lectio_wrapper/types/weeks/calendar_event.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

class AbsenceRegistrationsController extends Controller {
  AbsenceRegistrationsController(super.student);

  Future<List<AbsenceCauseEntry>> list() async {
    if (student.demo) {
      var faker = Faker.instance;
      return [
        AbsenceCauseEntry(
            id: "",
            absence: 0.6,
            expandedCause: faker.lorem.paragraph(),
            note: "",
            registered: faker.date.past(null),
            type: AbsenceType.absence,
            module: CalendarEvent(
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
                teamObjs: []))
      ];
    }
    var url = student.buildUrl(
        "subnav/fravaerelev_fravaersaarsager.aspx?elevid=${student.studentId}");
    var response = await request(url);
    return await extractAbsenceCauses(BeautifulSoup(response.data));
  }

  Future<void> update(
      AbsenceCauseEntry entry, AbsenceCauses cause, String note) async {
    String target = r"s$m$Content$Content$savecancelapplyBtn$svbtn";
    String url = student.buildUrl(
        "fravaer_aarsag.aspx?elevid=${student.studentId}&id=${entry.id}&atype=aa");
    await postLoggedInPageSoup(url, target, {
      r"s$m$Content$Content$StudentReasonDD$dd": cause.name,
      r"s$m$Content$Content$cancelStudentNote$tb": note
    });
  }
}
