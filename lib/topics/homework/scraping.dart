import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/weeks/scraping.dart';
import 'package:lectio_wrapper/utils/dating.dart';

final RegExp modulExpr = RegExp(r"\d. modul -");

Future<List<Homework>> extractHomework(BeautifulSoup soup) async {
  const String baseUrl = "https://lectio.dk";
  List<Homework> homeworkList = [];
  var homeworkSoup = soup.find("*",
      selector:
          "div#s_m_Content_Content_contentPnl table.ls-table-layout1:first-child");

  // if there is no homework
  if (homeworkSoup == null) {
    return [];
  }
  homeworkSoup.contents[1].findAll("tr").forEach((homework) {
    String date = homework.children[0].text;
    CalendarEvent aktivitet = extractModul(homework.children[1].children.first);
    String note = homework.children[2].text;
    int modul = 0;
    String modulText =
        homework.find('*', class_: 's2skemabrikcontent')?.text ?? "";
    var match = modulText.indexOf(modulExpr);
    if (match != -1) {
      String modulStr = modulText.substring(match, match + 1);
      modul = int.parse(modulStr);
    }
    var hourLink = homework.children[1].children[0].attributes['href'];
    homeworkList.add(Homework(
        aktivitet, baseUrl + hourLink!, parseLectioDate(date), note, modul));
  });
  return homeworkList;
}
