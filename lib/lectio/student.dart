import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:lectio_wrapper/lectio/basic_info.dart';
import 'package:lectio_wrapper/topics/absence/controller.dart';
import 'package:lectio_wrapper/topics/assignments/controller.dart';
import 'package:lectio_wrapper/topics/classes/controller.dart';
import 'package:lectio_wrapper/topics/events/controller.dart';
import 'package:lectio_wrapper/topics/gyms/controller.dart';
import 'package:lectio_wrapper/topics/messages/controller.dart';
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

  Student(this.studentId, this.gymId, {fetchInfo = false}) {
    homework = HomeworkController(this);
    gyms = GymController();
    classes = ClassesController(this);
    messages = MesssageController(this);
    events = EventController(this);
    assignments = AssignmentsController(this);
    weeks = WeekController(this);
    absence = AbsenceController(this);
    if (fetchInfo) {
      getBasicInfo().then((value) {
        name = value.name;
        imageId = value.pictureId;
      });
    }
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
    if (imageId.startsWith("https")) {
      response = await Requests.get(imageId);
    } else {
      response = await Requests.get(
          buildUrl("GetImage.aspx?pictureid=$imageId&fullsize=1"));
    }
    return response.bodyBytes;
  }

  /*def getBeskeder(self, year, folderID):
        otherASPData = {"__EVENTARGUMENT" : str(folderID), "s$m$ChooseTerm$term" : str(year), "s$m$Content$Content$ListGridSelectionTree$folders" : str(folderID)}
        beskederSoup = self.postLoggedInPageSoup(f"{self.rootURL}beskeder2.aspx?elevid={self.elevID}", "s$m$Content$Content$ListGridSelectionTree", otherASPData)

        showAllEventTarget = extract.extractBeskederShowAllEventTarget(beskederSoup)
        if showAllEventTarget:
            otherASPData["__EVENTARGUMENT"] = ""
            beskederSoup = self.postLoggedInPageSoup(f"{self.rootURL}beskeder2.aspx?elevid={self.elevID}", showAllEventTarget, otherASPData)

        return extract.extractBeskeder(beskederSoup) if beskederSoup else beskederSoup*/

  /*def getBeskedContent(self, beskedID):
        beskedSoup = self.postLoggedInPageSoup(f"{self.rootURL}beskeder2.aspx?elevid={self.elevID}", "__Page", {"__EVENTARGUMENT" : beskedID})

        return extract.extractBesked(beskedSoup) if beskedSoup else beskedSoup
*/

  Future<Uint8List> getFile(String url) async {
    var res = await Requests.get(url);
    return res.bodyBytes;
  }

  /* def getFravær(self, year, image=False):
        otherASPData = {"s$m$ChooseTerm$term" : str(year)}
        opgaverSoup = self.postLoggedInPageSoup(f"{self.rootURL}subnav/fravaerelev.aspx?elevid={self.elevID}", "s$m$ChooseTerm$term", otherASPData)
        if image and opgaverSoup:
            return self.getImage(extract.extractFraværImageURL(opgaverSoup))
        elif opgaverSoup:
            return extract.extractFravær(opgaverSoup)
        else:
            return opgaverSoup
    */

  Future<List<dynamic>> getGrades(int year, GradeType type) async {
    throw "no implementation";
  }
  /*
    def getKarakterer(self, year, karakterType):
        otherASPData = {"s$m$ChooseTerm$term" : str(year)}
        karakterSoup = self.postLoggedInPageSoup(f"{self.rootURL}grades/grade_report.aspx?elevid={self.elevID}", "s$m$ChooseTerm$term", otherASPData)

        if not karakterSoup:
            return karakterSoup
        elif karakterType == "bevis":
            return extract.extractKarakterBevis(karakterSoup)
        elif karakterType == "nuværende":
            return extract.extractCurrentKarakterer(karakterSoup)
        elif karakterType == "kommentar":
            return extract.extractKarakterComment(karakterSoup)
        elif karakterType == "protokol":
            return extract.extractKarakterProtokol(karakterSoup)
        else:
            return False
    */
}
