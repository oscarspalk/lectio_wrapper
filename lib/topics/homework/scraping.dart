import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/weeks/scraping.dart';
import 'package:lectio_wrapper/utils/dating.dart';

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
    var detailColumn = homework.children[3];
    var detailChildren = detailColumn.children;
    List<Detail> details = [];
    for (var detail in detailChildren) {
      if (detail.className.contains("ls-homework-note")) {
        int lastIndexOfA =
            details.lastIndexWhere((element) => element.href != null);
        if (lastIndexOfA != -1) {
          details[lastIndexOfA].note = detail.text;
          continue;
        }
      }
      String? href = detail.getAttrValue("href");
      String text = detail.text;
      if (text.isNotEmpty) {
        details.add(Detail(text: text, href: href));
      }
    }

    var hourLink = homework.children[1].children[0].attributes['href'];
    homeworkList.add(Homework(
        aktivitet, baseUrl + hourLink!, parseLectioDate(date), details, note));
  });
  return homeworkList;
}
