import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/weeks/scraping.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

class WeekController extends Controller {
  WeekController(super.student);

  Future<Week> get(int year, int week, {Week? debugWeek}) async {
    if (debugWeek != null) {
      return debugWeek;
    }
    var url = student.buildUrl(
        "SkemaNy.aspx?${student.teacher ? "laererid" : "elevid"}=${student.studentId}&week=${intFixed(week, 2)}$year");
    var response = await request(url);
    return await extractCalendar(BeautifulSoup(response.data), year, week);
  }
}
