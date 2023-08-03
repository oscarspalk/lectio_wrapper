import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/weeks/scraping.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

class WeekController {
  final Student student;
  WeekController(this.student);

  Future<Week> get(int year, int week) async {
    var url = student.buildUrl(
        "SkemaNy.aspx?${student.teacher ? "laererid" : "elevid"}=${student.studentId}&week=${intFixed(week, 2)}$year");
    var response = await lppDio.get(url);
    return await extractCalendar(BeautifulSoup(response.data), year, week);
  }
}
