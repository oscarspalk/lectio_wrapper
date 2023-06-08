import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:intl/intl.dart';
import 'package:lectio_wrapper/types/weeks/calendar_event.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

RegExp datePattern = RegExp(r"\d{1,2}\/\d{1,2}-\d{4}");

RegExp timePattern = RegExp(r"\d{2}:\d{2}");
RegExp modulTimePattern = RegExp(r"\d{1,2}\/\d{1,2}");

Future<Week> extractCalendar(BeautifulSoup soup, int year, int weekNum) async {
  var calendarSoup = soup.find("tbody")!;
  var titleSoup = calendarSoup.find("td", selector: "tr.s2dayHeader")!.children;
  titleSoup.removeAt(0).decompose();
  List<String> titles = [];
  for (var dayTitle in titleSoup) {
    titles.add(dayTitle.text);
  }

  var informationHeaders =
      calendarSoup.findAll("*", selector: "td.s2infoHeader");
  informationHeaders.removeAt(0).decompose();
  List<List<String>> informations = [];
  for (var informationHeader in informationHeaders) {
    List<String> informationsInner = [];
    var infos = informationHeader.findAll("*", selector: "a.s2skemabrik");
    for (var element in infos) {
      informationsInner.add(element.text);
    }
    informations.add(informationsInner);
  }

  var calendarDays =
      calendarSoup.findAll("*", selector: "div.s2skemabrikcontainer");
  calendarDays.removeAt(0).decompose();

  Week week = Week([], weekNum);
  for (int i = 0; i < calendarDays.length; i++) {
    var day = calendarDays[i];
    var informationsForThisDay = informations[i];
    var dayMatches = modulTimePattern.firstMatch(titles[i]);
    List<int> dayMonthAndDay = dayMatches != null
        ? titles[i]
            .substring(dayMatches.start, dayMatches.end)
            .split("/")
            .map((e) => int.parse(e))
            .toList()
        : [1, 1];
    var dayTime = DateTime(year, dayMonthAndDay[1], dayMonthAndDay[0]);
    List<CalenderEvent> dayEvents = [];
    day.findAll("*", selector: "a.s2bgbox").forEach((piece) {
      String status = "Uændret";
      String id =
          queriesFromSoup(piece.getAttrValue('href') ?? "")['absid'] ?? "";
      String title = "";
      DateTime start = DateTime.now();
      DateTime end = DateTime.now();
      String team = "";
      String room = "";
      String teacher = "";
      List<String> pieceInformation =
          piece.getAttrValue('data-additionalinfo')!.split("\n");
      for (int j = 0; j < 2; j++) {
        if (!(datePattern.stringMatch(pieceInformation[j]) != null) &&
            !states.contains(pieceInformation[j]) &&
            !pieceInformation[j]
                .toLowerCase()
                .startsWith(RegExp(r"hold|lærer|lokale"))) {
          title = pieceInformation.removeAt(j);
          break;
        }
      }

      for (var pieceInfo in pieceInformation) {
        var dates = datePattern.allMatches(pieceInfo);
        var times = timePattern.allMatches(pieceInfo);

        if (dates.isNotEmpty && times.isNotEmpty) {
          String startTime =
              "${regToStr(dates.elementAt(0))} ${regToStr(times.elementAt(0))}";
          String endTime =
              "${regToStr(dates.elementAt(0))} ${regToStr(times.elementAt(1))}";
          DateFormat format = DateFormat("d/M-y HH:mm");
          start = format.parse(startTime);
          end = format.parse(endTime);
        } else if (states.contains(pieceInfo)) {
          status = pieceInfo;
        } else {
          List<String> data = pieceInfo.split(": ");
          switch (data[0]) {
            case "Hold":
              team = data[1];
              break;
            case "Lærer":
              teacher = data[1];
              break;
            case "Lokale":
              room = data[1];
              break;
          }
        }
      }
      var event =
          CalenderEvent(status, title, team, teacher, room, id, start, end);
      dayEvents.add(event);
    });
    week.days.add(Day(informationsForThisDay, dayEvents, dayTime));
  }
  return week;
}
