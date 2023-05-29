import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:lectio_wrapper/lectio/basic_info.dart';
import 'package:lectio_wrapper/types/assignment.dart';
import 'package:lectio_wrapper/types/calendar_event.dart';
import 'package:lectio_wrapper/types/class.dart';
import 'package:lectio_wrapper/types/homework.dart';
import 'package:lectio_wrapper/utils/scraping.dart';
import 'package:requests/requests.dart';

enum GradeType { proof, actual, comment, protocol }

String intFixed(int n, int count) => n.toString().padLeft(count, "0");

/// A student, which can be used to request a load of stuff.
/// Be aware that if a student object isn't fetched by login, you do not have sufficient permissions to view fx. grades etc.
/// Takes a [String] studentId and an [int] gymId
class Student {
  String studentId;
  int gymId;
  late Scraper scraper;
  late String imageId;
  late String name;
  Student(this.studentId, this.gymId, {fetchInfo = false}) {
    scraper = Scraper(this);
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
    return scraper.extractBasicInfo(profileSoup);
  }

  String get baseUrl => "https://www.lectio.dk/lectio/$gymId/";

  String buildUrl(String path) {
    return baseUrl + path;
  }

  /// Get an external student.
  Student getStudent(String studentId) {
    return Student(studentId, gymId);
  }

  /// Get all classes as a [List] of [Class]
  Future<List<ClassRef>> getClasses() async {
    String url = buildUrl("FindSkema.aspx?type=stamklasse");
    var soup = await Requests.get(url);
    return await scraper.extractClasses(BeautifulSoup(soup.body));
  }

  Future<Class> getClass(ClassRef ref) async {
    return await scraper.extractClass(ref, buildUrl);
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

  /// Returns all assignments for the specified year.
  Future<List<Assignment>> getAssignments() async {
    String url = buildUrl("OpgaverElev.aspx?elevid=$studentId");
    var assignmentSoup = await Requests.get(url);
    return await scraper.extractAssignments(BeautifulSoup(assignmentSoup.body));
  }

  Future<List<Homework>> getHomework() async {
    var url = buildUrl("material_lektieoversigt.aspx?elevid=$studentId");
    var response = await Requests.get(url);
    return await scraper.extractHomework(BeautifulSoup(response.body));
  }

  Future<List<dynamic>> getMessages() async {
    var url = buildUrl("beskeder2.aspx?elevid=$studentId");
    var response = await Requests.get(url);
    return await scraper.extractMessages(BeautifulSoup(response.body));
  }

  /*def getBeskeder(self, year, folderID):
        otherASPData = {"__EVENTARGUMENT" : str(folderID), "s$m$ChooseTerm$term" : str(year), "s$m$Content$Content$ListGridSelectionTree$folders" : str(folderID)}
        beskederSoup = self.postLoggedInPageSoup(f"{self.rootURL}beskeder2.aspx?elevid={self.elevID}", "s$m$Content$Content$ListGridSelectionTree", otherASPData)

        showAllEventTarget = extract.extractBeskederShowAllEventTarget(beskederSoup)
        if showAllEventTarget:
            otherASPData["__EVENTARGUMENT"] = ""
            beskederSoup = self.postLoggedInPageSoup(f"{self.rootURL}beskeder2.aspx?elevid={self.elevID}", showAllEventTarget, otherASPData)

        return extract.extractBeskeder(beskederSoup) if beskederSoup else beskederSoup*/

  Future<List<dynamic>> getMessageContent(String messageId) async {
    var url = buildUrl("material_lektieoversigt.aspx?elevid=$studentId");
    var response = await Requests.get(url);
    return await scraper.extractHomework(BeautifulSoup(response.body));
  }

  /*def getBeskedContent(self, beskedID):
        beskedSoup = self.postLoggedInPageSoup(f"{self.rootURL}beskeder2.aspx?elevid={self.elevID}", "__Page", {"__EVENTARGUMENT" : beskedID})

        return extract.extractBesked(beskedSoup) if beskedSoup else beskedSoup
*/
  Future<Week> getCalendar(int year, int week) async {
    var url = buildUrl(
        "SkemaNy.aspx?type=elev&elevid=$studentId&week=${intFixed(week, 2)}$year");
    var response = await Requests.get(url);
    return await scraper.extractCalendar(
        BeautifulSoup(response.body), year, week);
  }

  Future<List<dynamic>> getAbsence(int year, {bool image = false}) async {
    var url = buildUrl("material_lektieoversigt.aspx?elevid=$studentId");
    var response = await Requests.get(url);
    return await scraper.extractHomework(BeautifulSoup(response.body));
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
    var url = buildUrl("grades/grade_report.aspx?elevid=$studentId");
    var response = await Requests.get(url);
    return await scraper.extractHomework(BeautifulSoup(response.body));
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
