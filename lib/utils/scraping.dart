import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:intl/intl.dart';
import 'package:lectio_wrapper/lectio/basic_info.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/types/assignment.dart';
import 'package:lectio_wrapper/types/calendar_event.dart';
import 'package:lectio_wrapper/types/class.dart';
import 'package:lectio_wrapper/types/gym.dart';
import 'package:lectio_wrapper/types/message.dart';
import 'package:requests/requests.dart';
import 'package:http/http.dart' as http;
import 'package:lectio_wrapper/types/detail.dart';
import 'package:lectio_wrapper/types/homework.dart';
import 'package:lectio_wrapper/types/link_detail.dart';
import 'package:lectio_wrapper/types/text_detail.dart';

RegExp datePattern = RegExp(r"\d{1,2}\/\d{1,2}-\d{4}");

RegExp timePattern = RegExp(r"\d{2}:\d{2}");
RegExp gymIdPattern = RegExp(r"\d");
RegExp modulTimePattern = RegExp(r"\d{1,2}\/\d{1,2}");
Future<Map<String, String>> extractASPData(
    BeautifulSoup soup, String target) async {
  Map<String, String> data = {"__EVENTTARGET": target};
  List<String> checkStrings = [
    "__VIEWSTATEX",
    "__EVENTVALIDATION",
    "__EVENTARGUMENT",
    "__SCROLLPOSITION",
    "__VIEWSTATEY_KEY",
    "__VIEWSTATE",
    "masterfootervalue"
  ];
  for (var name in checkStrings) {
    try {
      var element = soup.find("*", id: name);
      data[name] = element!.getAttrValue("value")!;
    } catch (e) {
      data[name] = "";
    }
  }
  return data;
}

Map<String, String> queriesFromSoup(String url) {
  int splitLocation = url.indexOf("?");
  var keys = Map.fromEntries(
      url.substring(splitLocation + 1).split("&").map((keyValue) {
    List<String> keyAndValue = keyValue.split("=");
    return MapEntry(keyAndValue[0], keyAndValue[1]);
  }));
  return keys;
}

String? getElevId(BeautifulSoup soup) {
  String? path = soup.find("meta",
      attrs: {'name': 'msapplication-starturl'})!.getAttrValue('content');
  return queriesFromSoup(path ?? "")['elevid'];
}

Future<BeautifulSoup?> loggedIn(String url, {Map<String, String>? data}) async {
  http.Response response;
  if (data != null) {
    response = await Requests.post(url, body: data);
  } else {
    response = await Requests.get(url);
  }

  BeautifulSoup soup = BeautifulSoup(response.body);
  if (response.url.toString().contains("login.aspx?prevurl")) {
    return null;
  } else {
    return soup;
  }
}

Future<List<Gym>> listGyms() async {
  List<Gym> gyms = [];
  String gymsListUrl = "https://www.lectio.dk/lectio/login_list.aspx?showall=1";
  var response = await Requests.get(gymsListUrl);
  var soup = BeautifulSoup(response.body);
  var listElement = soup.find("*", id: "schoolsdiv");
  if (listElement == null) {
    return gyms;
  }
  for (var schoolParent in listElement.children) {
    var linkElement = schoolParent.children[0];
    var href = linkElement.getAttrValue("href");
    var name = linkElement.text;
    var nums = gymIdPattern.allMatches(href ?? "").toList();
    String numBuffer = "";
    for (var n in nums) {
      numBuffer = numBuffer + (href ?? "").substring(n.start, n.end);
    }
    gyms.add(Gym(int.parse(numBuffer), name));
  }
  return gyms;
}

class Scraper {
  Student student;

  Scraper(this.student);

  String regToStr(RegExpMatch match) {
    return match.input.substring(match.start, match.end);
  }

  List<String> states = ["Aflyst!", "Ændret!"];

  Future<BasicInfo> extractBasicInfo(BeautifulSoup soup) async {
    String? src = soup
        .find("img", id: "s_m_HeaderContent_picctrlthumbimage")!
        .attributes['src'];
    String pictureId = "";
    if (src != null && src.contains("pictureid")) {
      pictureId = queriesFromSoup(src)['pictureid'] ?? "";
    }
    String nameWithExtra =
        soup.find('div', id: "s_m_HeaderContent_MainTitle")!.text;
    String name = nameWithExtra.substring(
        nameWithExtra.indexOf('n') + 2, nameWithExtra.indexOf(','));
    return BasicInfo(name, pictureId);
  }

  Future<List<Student>> extractStudents(BeautifulSoup soup) async {
    Bs4Element? studentTable = soup
        .find('table', id: "s_m_Content_Content_laerereleverpanel_alm_gv")!
        .children
        .elementAt(0);
    // remove first
    List<Bs4Element> studentRows =
        studentTable.children.sublist(1, studentTable.children.length);
    List<Student> students = [];
    for (var student in studentRows) {
      Bs4Element firstNameElement = student.children[2].children[0].children[0];
      String? href = firstNameElement.attributes['href'];
      if (href != null) {
        String? id = queriesFromSoup(href)['elevid'];
        if (id != null) {
          students.add(Student(id, this.student.gymId));
        }
      }
    }
    return students;
  }

  Future<Class> extractClass(
      String url, String Function(String path) buildUrl) async {
    String uri = "https://www.lectio.dk$url";
    var soup = await Requests.get(uri);
    BeautifulSoup bs = BeautifulSoup(soup.body);
    Bs4Element? title = bs.find('div', id: "s_m_HeaderContent_MainTitle");
    String className = "";
    if (title != null) {
      RegExpMatch? match = RegExp(r'\d[a-z]*[a-z]').firstMatch(title.text);
      if (match != null) {
        className = match[0]!;
      }
    }
    String classId = queriesFromSoup(url)['klasseid'] ?? "";
    String classUrl =
        buildUrl("subnav/members.aspx?klasseid=$classId&showstudents=1");
    var studentSoup = await Requests.get(classUrl);
    List<Student> students =
        await extractStudents(BeautifulSoup(studentSoup.body));
    return Class(classId, className, students);
  }

  Future<List<Class>> extractClasses(
      BeautifulSoup soup, String Function(String path) buildUrl) async {
    List<Class> classes = [];
    Bs4Element? classTableParent =
        soup.find('div', id: "m_Content_listecontainer");
    if (classTableParent != null && classTableParent.children.isNotEmpty) {
      Bs4Element table = classTableParent.children.elementAt(0);
      for (var paragraph in table.children) {
        for (var group in paragraph.children) {
          String? href = group.attributes['href'];
          if (group.text.contains(RegExp(r'^\d[a-z]*[a-z]')) && href != null) {
            Class temp = await extractClass(href, buildUrl);
            classes.add(temp);
          }
        }
      }
      //return await Future.wait(classesToExtract);
    }
    return classes;
  }

  Future<Week> extractCalendar(
      BeautifulSoup soup, int year, int weekNum) async {
    var calendarSoup = soup.find("tbody")!;
    var titleSoup =
        calendarSoup.find("td", selector: "tr.s2dayHeader")!.children;
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
        String link = piece.getAttrValue('href') ?? "";
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
            CalenderEvent(status, title, team, teacher, room, link, start, end);
        dayEvents.add(event);
      });
      week.days.add(Day(informationsForThisDay, dayEvents, dayTime));
    }
    return week;
  }

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
      homeworkList
          .add(Homework(aktivitet, baseUrl + hourLink!, date, details, note));
    });
    return homeworkList;
  }

  Future<BeautifulSoup?> postLoggedInPageSoup(
      String url, String target, Map<String, String> otherAspData) async {
    var getResponse = await loggedIn(url);
    if (getResponse != null) {
      var aspData = await extractASPData(getResponse, target);
      aspData.addAll(otherAspData);
      return await loggedIn(url, data: aspData);
    } else {
      return null;
    }
  }

  Future<List<Message>> extractMessages(BeautifulSoup soup) async {
    List<Message> messages = [];
    var messageTable = soup
        .find("table", id: "s_m_Content_Content_threadGV_ctl00")!
        .children[0]
        .children;
    messageTable.removeAt(0).decompose();
    for (var messageRow in messageTable) {
      String messageLink =
          messageRow.children[3].children[0].children[0].getAttrValue("href")!;
      String topic = messageRow.children[3].text;
      String receivers = messageRow.children[5].text;
      String dateChanged = messageRow.children[6].text;
      messages.add(Message(messageLink, dateChanged, receivers, topic));
    }
    return messages;
  }

  Future<List<Assignment>> extractAssignments(BeautifulSoup soup) async {
    List<Assignment> assignments = [];
    var assignmentsSoup = soup.find("table")!.children[0].children;
    // remove first
    assignmentsSoup.removeAt(0).decompose();
    for (var assignmentRow in assignmentsSoup) {
      var columns = assignmentRow.findAll("td");
      int week = int.parse(columns[0].text);
      String team = columns[1].text;
      var task = columns[2].children[0].children[0];
      String taskLink = task.getAttrValue('href')!;
      String title = task.text;
      DateFormat format = DateFormat("d/M-y H:M");
      DateTime deadline = format.parse(columns[3].text);
      double studentTime = double.parse(columns[4].text.replaceAll(",", "."));
      String status = columns[5].text;
      String absence = columns[6].text;
      String taskNote = columns[8].text;
      assignments.add(Assignment(
          week: week,
          team: team,
          title: title,
          deadline: deadline,
          studentTime: studentTime,
          status: status,
          absence: absence,
          taskNote: taskNote,
          taskLink: taskLink));
    }
    return assignments;
  }
}
