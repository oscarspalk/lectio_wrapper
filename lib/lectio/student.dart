import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:lectio_wrapper/lectio/basic_info.dart';
import 'package:lectio_wrapper/topics/absence/controller.dart';
import 'package:lectio_wrapper/topics/assignments/controller.dart';
import 'package:lectio_wrapper/topics/classes/controller.dart';
import 'package:lectio_wrapper/topics/context/controller.dart';
import 'package:lectio_wrapper/topics/events/controller.dart';
import 'package:lectio_wrapper/topics/grades/controller.dart';
import 'package:lectio_wrapper/topics/gyms/controller.dart';
import 'package:lectio_wrapper/topics/messages/controller.dart';
import 'package:lectio_wrapper/topics/students/controller.dart';
import 'package:lectio_wrapper/topics/weeks/controller.dart';
import 'package:lectio_wrapper/utils/scraping.dart';
import 'package:requests/requests.dart';
import 'package:lectio_wrapper/topics/homework/controller.dart';

enum GradeType { proof, actual, comment, protocol }

String intFixed(int n, int count) => n.toString().padLeft(count, "0");

/// A student, which can be used to request a load of stuff.
/// Be aware that if a student object isn't fetched by login, you do not have sufficient permissions to view fx. grades etc.
/// Takes a [String] studentId and an [int] gymId
class Student {
  String studentId;
  int gymId;
  late String imageId;
  late String name;
  late HomeworkController homework;
  late GymController gyms;
  late ClassesController classes;
  late MesssageController messages;
  late EventController events;
  late AssignmentsController assignments;
  late WeekController weeks;
  late AbsenceController absence;
  late GradeController grades;
  late ContextController context;
  late StudentsController students;
  Map<String, Uint8List> images = {};
  Student(this.studentId, this.gymId) {
    homework = HomeworkController(this);
    gyms = GymController();
    classes = ClassesController(this);
    messages = MesssageController(this);
    events = EventController(this);
    assignments = AssignmentsController(this);
    weeks = WeekController(this);
    absence = AbsenceController(this);
    grades = GradeController(this);
    context = ContextController(this);
    students = StudentsController(this);
  }

  void setBasicInfo(BasicInfo basicInfo) {
    name = basicInfo.name;
    imageId = basicInfo.pictureId;
  }

  /// Returns a [BasicInfo] containing name and pictureId.
  Future<BasicInfo> getBasicInfo() async {
    String profileUrl = buildUrl("SkemaNy.aspx?type=elev&elevid=$studentId");
    var resp = await Requests.get(profileUrl);
    BeautifulSoup profileSoup = BeautifulSoup(resp.body);
    return extractBasicInfo(profileSoup);
  }

  String get baseUrl => "https://www.lectio.dk/lectio/$gymId/";

  String buildUrl(String path) {
    return baseUrl + path;
  }

  Future<CookieJar> getCookies() {
    return Requests.getStoredCookies("www.lectio.dk");
  }

  /// Get an external student.
  Student getStudent(String studentId) {
    return Student(studentId, gymId);
  }

  /// Returns an image from an id as a [Uint8List]
  Future<Uint8List> getImage(String imageId) async {
    Response response;
    if (images.containsKey(imageId)) {
      return images[imageId]!;
    }
    if (imageId.startsWith("https")) {
      response = await Requests.get(imageId);
    } else {
      response = await Requests.get(
          buildUrl("GetImage.aspx?pictureid=$imageId&fullsize=1"));
    }
    images.putIfAbsent(imageId, () => response.bodyBytes);
    return response.bodyBytes;
  }

  Future<Uint8List> getFile(String url) async {
    var res = await Requests.get(url);
    return res.bodyBytes;
  }
}
