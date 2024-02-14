import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/weeks/scraping.dart';
import 'package:lectio_wrapper/utils/dating.dart';

final RegExp modulExpr = RegExp(r"\d. modul -");

Future<List<Homework>> extractHomework(BeautifulSoup soup) async {
  List<Homework> homeworkList = [];
  var homeworkSoup = soup
      .find("*", id: 's_m_Content_Content_MaterialLektieOverblikGV')
      ?.findAll('tr');

  // if there is no homework
  if (homeworkSoup == null) {
    return [];
  }
  homeworkSoup.removeAt(0);
  for (var homework in homeworkSoup) {
    String date = homework.children[0].text;
    Bs4Element? homeworkActivity = homework.find('*', class_: 's2skemabrik');
    if (homeworkActivity == null) {
      continue;
    }
    CalendarEvent? aktivitet = extractModul(homeworkActivity);
    String note = homework.children[2].text;
    if (aktivitet != null) {
      homeworkList.add(Homework(
          activity: aktivitet, dato: parseLectioDate(date), note: note));
    }
  }
  return homeworkList;
}
