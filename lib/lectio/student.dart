import 'dart:io';
import 'dart:typed_data';

import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/basic_info.dart';
import 'package:lectio_wrapper/topics/absence/controller.dart';
import 'package:lectio_wrapper/topics/assignments/controller.dart';
import 'package:lectio_wrapper/topics/classes/controller.dart';
import 'package:lectio_wrapper/topics/context/controller.dart';
import 'package:lectio_wrapper/topics/events/controller.dart';
import 'package:lectio_wrapper/topics/grades/controller.dart';
import 'package:lectio_wrapper/topics/gyms/controller.dart';
import 'package:lectio_wrapper/topics/messages/controller.dart';
import 'package:lectio_wrapper/topics/messages/meta/controller.dart';
import 'package:lectio_wrapper/topics/plans/controller.dart';
import 'package:lectio_wrapper/topics/rooms/controller.dart';
import 'package:lectio_wrapper/topics/students/controller.dart';
import 'package:lectio_wrapper/topics/teams/controller.dart';
import 'package:lectio_wrapper/topics/weeks/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';
import 'package:lectio_wrapper/utils/dio_image_provider.dart';
import 'package:lectio_wrapper/utils/scraping.dart';
import 'package:lectio_wrapper/topics/homework/controller.dart';

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
  late MessageMetaController meta;
  late StudentsController students;
  late RoomsController rooms;
  late PlansController plans;
  late TeamsController teams;
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
    meta = MessageMetaController(this);
    students = StudentsController(this);
    rooms = RoomsController(this);
    plans = PlansController(this);
    teams = TeamsController(this);
  }

  void setBasicInfo(BasicInfo basicInfo) {
    name = basicInfo.name;
    imageId = basicInfo.pictureId;
  }

  /// Returns a [BasicInfo] containing name and pictureId.
  Future<BasicInfo> getBasicInfo() async {
    String profileUrl = buildUrl("SkemaNy.aspx?type=elev&elevid=$studentId");
    var resp = await lppDio.get(profileUrl);
    BeautifulSoup profileSoup = BeautifulSoup(resp.data);
    return extractBasicInfo(profileSoup);
  }

  String get baseUrl => "https://www.lectio.dk/lectio/$gymId/";

  String buildUrl(String path) {
    return baseUrl + path;
  }

  Future<List<Cookie>> getCookies() async {
    return lppCookies.loadForRequest(Uri.parse("https://www.lectio.dk"));
  }

  /// Get an external student.
  Student getStudent(String studentId) {
    return Student(studentId, gymId);
  }

  /// Returns an image from an id as a [Uint8List]
  DioImage getImage(String imageId, {bool fullsize = false}) {
    String url;
    if (imageId.startsWith("https")) {
      url = imageId;
    } else {
      url = buildUrl(
          "GetImage.aspx?pictureid=$imageId${fullsize ? "&fullsize=1" : ""}");
    }
    return DioImage.string(url);
  }

  Future<Uint8List> getFile(String url) async {
    var res = await lppDio.get(url);
    var list = Uint8List.fromList((res.data as String).codeUnits);
    return list;
  }
}
