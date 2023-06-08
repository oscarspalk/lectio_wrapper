import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/weeks/scraping.dart';
import 'package:requests/requests.dart';

class WeekController {
  final Student student;
  WeekController(this.student);

  Future<Week> get(int year, int week) async {
    var url = student.buildUrl(
        "SkemaNy.aspx?type=elev&elevid=${student.studentId}&week=${intFixed(week, 2)}$year");
    var response = await Requests.get(url);
    return await extractCalendar(BeautifulSoup(response.body), year, week);
  }
}
