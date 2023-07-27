import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/utils/scraping.dart';
import 'package:requests/requests.dart';

class InvalidCredentialsError extends Error {}

class Account {
  int gymId;
  String username;
  String password;
  Account(this.gymId, this.username, this.password);

  String? checkLoggedIn(BeautifulSoup soup) {
    var link = soup.find('*', id: 's_m_HeaderContent_subnavigator_ctl01');
    if (link != null) {
      var src = link.getAttrValue("href");
      return queriesFromSoup(src!)['elevid']!;
    }
    return null;
  }

  Future<Student?> loginWithCookies(String cookie) async {
    Requests.setStoredCookies(
        "www.lectio.dk", CookieJar.parseCookiesString(cookie));
    String forsideUrl = "https://www.lectio.dk/lectio/$gymId/forside.aspx";

    String? studentId =
        checkLoggedIn(BeautifulSoup((await Requests.get(forsideUrl)).body));
    if (studentId == null) {
      throw InvalidCredentialsError();
    }
    var student = Student(studentId, gymId);
    return student;
  }

  Future<Student?> login() async {
    try {
      String loginUrl = "https://www.lectio.dk/lectio/$gymId/login.aspx";
      String forsideUrl = "https://www.lectio.dk/lectio/$gymId/forside.aspx";
      var loginGet =
          await Requests.get(loginUrl, headers: {'user-agent': 'Mozilla/5.0'});
      BeautifulSoup bs = BeautifulSoup(loginGet.body);
      Map<String, String?> extracted =
          await extractASPData(bs, "m\$Content\$submitbtn2");

      extracted["m\$Content\$username"] = username;
      extracted["m\$Content\$password"] = password;

      await Requests.post(loginUrl, body: extracted)
          .timeout(const Duration(seconds: 5));
      String? studentId = getElevId((await loggedIn(forsideUrl))!);
      if (studentId == null) {
        throw InvalidCredentialsError();
      }
      var student = Student(studentId, gymId);
      return student;
    } catch (e) {
      return null;
    }
  }
}
