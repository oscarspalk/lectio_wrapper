import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:intl/intl.dart';
import 'package:lectio_wrapper/types/message/meta/meta.dart';
import 'package:lectio_wrapper/types/weeks/calendar_event.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

RegExp datePattern = RegExp(r"\d{1,2}\/\d{1,2}-\d{4}");

RegExp timePattern = RegExp(r"\d{2}:\d{2}");
RegExp modulTimePattern = RegExp(r"\d{1,2}\/\d{1,2}");

Future<Week> extractCalendar(BeautifulSoup soup, int year, int weekNum) async {
  List<ModulRange> modulRanges = [];
  List<Day> days = [];
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
  Bs4Element modulRangesColumn = calendarDays.removeAt(0);

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
    List<CalendarEvent> dayEvents = [];
    day.findAll("*", selector: "a.s2bgbox").forEach((piece) {
      var event = extractModul(piece);
      dayEvents.add(event);
    });
    days.add(Day(
        informations: informationsForThisDay,
        events: dayEvents,
        date: dayTime));
  }

  List<Bs4Element> modulRangeContainers =
      modulRangesColumn.findAll('*', class_: 's2module-info');
  for (var modulRangeContainer in modulRangeContainers) {
    List<String> modulAndTimes = modulRangeContainer.text.split(". modul");
    if (modulAndTimes.length == 2) {
      int? modulNumber = int.tryParse(modulAndTimes[0]);
      List<String> times = modulAndTimes[1].split("-");
      DayTime? start = dayTimeFromString(times[0]);
      DayTime? end = dayTimeFromString(times[1]);
      if (modulNumber != null && start != null && end != null) {
        modulRanges
            .add(ModulRange(number: modulNumber, start: start, end: end));
      }
    }
  }

  return Week(days: days, weekNum: weekNum, modulRanges: modulRanges);
}

CalendarEvent extractModul(Bs4Element element) {
  CalendarEventType type = CalendarEventType.regular;
  String status = "Uændret";
  String? id = queriesFromSoup(element.getAttrValue('href') ?? "")['absid'];
  if (id == null) {
    type = CalendarEventType.test;
    id = queriesFromSoup(element.getAttrValue('href') ?? "")['ProeveholdId'];
  }
  if (id == null) {
    type = CalendarEventType.private;
    id = queriesFromSoup(element.getAttrValue('href') ?? "")['aftaleid'];
  }

  String title = "";
  DateTime start = DateTime.now();
  DateTime end = DateTime.now();
  String team = "";
  String room = "";
  List<String> teacher = [];
  String note = "";
  List<String> pieceInformation =
      element.getAttrValue('data-additionalinfo')!.split("\n");
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
          "${regToStr(dates.length > 1 ? dates.elementAt(1) : dates.elementAt(0))} ${regToStr(times.elementAt(1))}";
      DateFormat format = DateFormat("d/M-y HH:mm");
      start = format.parse(startTime);
      end = format.parse(endTime);
    } else if (states.contains(pieceInfo)) {
      status = pieceInfo;
    } else {
      List<String> data = pieceInfo.split(":");
      switch (data[0]) {
        case "Hold":
          team = data[1].trim();
          break;
        case "Lærer":
          teacher = extractTeachers(data[1]);
          break;
        case "Lærere":
          teacher = extractTeachers(data[1]);
          break;
        case "Lokale":
          room = data[1].trim();
          break;
        case "Note":
          var index = pieceInformation.indexOf(pieceInfo);
          if (index < pieceInformation.length - 1) {
            note = pieceInformation.sublist(index + 1).join("\n");
          }
          break;
      }
    }
  }
  List<MetaDataEntry> teacherObjs = [];
  List<MetaDataEntry> teamObjs = [];
  Bs4Element? skemaContent = element.find('*', class_: 's2skemabrikcontent');
  if (skemaContent != null) {
    List<Bs4Element> dataSpans = skemaContent.findAll('span');
    for (var dataSpan in dataSpans) {
      var contextId = dataSpan.getAttrValue("data-lectiocontextcard");
      if (contextId != null) {
        var entry = MetaDataEntry(id: contextId, name: dataSpan.text);
        if (contextId.startsWith("T")) {
          teacherObjs.add(entry);
        }
        if (contextId.startsWith("HE")) {
          teamObjs.add(entry);
        }
      }
    }
  }
  return CalendarEvent(
      status: status,
      title: title,
      team: team,
      teachers: teacher,
      room: room,
      id: id!,
      start: start,
      end: end,
      type: type,
      note: note,
      teacherObjs: teacherObjs,
      teamObjs: teamObjs);
}

List<String> extractTeachers(String text) {
  return text.trim().split(",");
}

DayTime? dayTimeFromString(String time) {
  List<String> hM = time.split(":");
  if (hM.length != 2) {
    return null;
  }
  int? hour = int.tryParse(hM[0]);
  int? minute = int.tryParse(hM[1]);
  return hour != null && minute != null
      ? DayTime(hour: hour, minute: minute)
      : null;
}
