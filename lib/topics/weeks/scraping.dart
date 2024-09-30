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
      var event = extractModul(piece, day: dayTime);
      if (event != null) {
        dayEvents.add(event);
      }
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

CalendarEvent? extractModul(Bs4Element element, {DateTime? day}) {
  day = day ?? DateTime.now();
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
  bool hasHomework = false;
  bool hasNote = false;
  if (type == CalendarEventType.regular) {
    Bs4Element? homeworkIcon = element.find('*', class_: 'ls-lektier');
    Bs4Element? noteIcon = element.find('*', class_: 'ls-note');
    hasHomework = homeworkIcon != null;
    hasNote = noteIcon != null;
  }
  String title = "";
  DateTime? start;
  DateTime? end;
  String team = "";
  String room = "";
  List<String> teacher = [];
  String note = "";
  List<String> pieceInformation =
      element.getAttrValue('data-tooltip')!.split("\n");

  // check for title and timestamps
  for (var pieceInfo in pieceInformation) {
    var dates = datePattern.allMatches(pieceInfo);
    var times = timePattern.allMatches(pieceInfo);

    if (times.isNotEmpty && start == null && end == null) {
      if (dates.isNotEmpty) {
        String startTime =
            "${regToStr(dates.elementAt(0))} ${regToStr(times.elementAt(0))}";
        String endTime =
            "${regToStr(dates.length > 1 ? dates.elementAt(1) : dates.elementAt(0))} ${regToStr(times.elementAt(1))}";
        DateFormat format = DateFormat("d/M-y HH:mm");
        start = format.parse(startTime);
        end = format.parse(endTime);
      } else {
        if (times.length >= 2) {
          DateFormat hhMM = DateFormat("HH:mm");
          var startHHmm = hhMM.parse(regToStr(times.elementAt(0)));
          var endHHmm = hhMM.parse(regToStr(times.elementAt(1)));
          start = day.copyWith(hour: startHHmm.hour, minute: startHHmm.minute);
          end = day.copyWith(hour: endHHmm.hour, minute: endHHmm.minute);
        }
      }
    } else if (states.contains(pieceInfo)) {
      status = pieceInfo;
    }
  }

  // extract all named info
  for (var namedInfo in pieceInformation) {
    List<String> data = namedInfo.split(":");
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
      case "Lokaler":
        room = data[1].trim();
        break;
      case "Note":
        var index = pieceInformation.indexOf(namedInfo);
        if (index < pieceInformation.length - 1) {
          note = pieceInformation
              .sublist(index, pieceInformation.length)
              .join("\n")
              .replaceFirst('Note:', "")
              .trim();
        }
        break;
    }
  }

  // extract teacher and team objects
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

  if (pieceInformation.isNotEmpty && pieceInformation[0].isNotEmpty) {
    if (!states.contains(pieceInformation[0]) &&
        timePattern.allMatches(pieceInformation[0]).isEmpty) {
      title = pieceInformation[0];
    }
  }

  if (start != null && end != null) {
    return CalendarEvent(
        hasHomework: hasHomework,
        hasNote: hasNote,
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
  return null;
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
