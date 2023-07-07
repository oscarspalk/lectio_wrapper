import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/types/homework/detail.dart';
import 'package:lectio_wrapper/types/homework/homework.dart';
import 'package:lectio_wrapper/types/homework/link_detail.dart';
import 'package:lectio_wrapper/types/homework/text_detail.dart';
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
    String aktivitet =
        homework.children[1].children[0].children[0].children[1].text;
    String note = homework.children[2].text;
    var detailColumn = homework.children[3];
    List<Detail> details = [];
    for (var detail in detailColumn.nodes) {
      if (detail.text != null && detail.text != "") {
        if (detail.attributes.containsKey("href")) {
          details.add(LinkDetail(detail.attributes['href']!, detail.text!));
        } else {
          details.add(TextDetail(detail.text!));
        }
      }
    }

    var hourLink = homework.children[1].children[0].attributes['href'];
    homeworkList.add(Homework(
        aktivitet, baseUrl + hourLink!, parseLectioDate(date), details, note));
  });
  return homeworkList;
}
