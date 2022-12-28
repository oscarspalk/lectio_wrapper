import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/utils/scraping.dart';
import 'package:requests/requests.dart';

class Account {
  int gymId;
  String username;
  String password;
  Account(this.gymId, this.username, this.password);

  Future<Student?> login() async {
    try {
      String loginUrl = "https://www.lectio.dk/lectio/$gymId/login.aspx";
      String forsideUrl = "https://www.lectio.dk/lectio/$gymId/forside.aspx";
      var loginGet =
          await Requests.get(loginUrl, headers: {'user-agent': 'Mozilla/5.0'});
      BeautifulSoup bs = BeautifulSoup(loginGet.body);
      Map<String, String> extracted =
          await extractASPData(bs, "m\$Content\$submitbtn2");

      extracted["m\$Content\$username"] = username;
      extracted["m\$Content\$password"] = password;

      await Requests.post(loginUrl, body: extracted);
      String studentId = getElevId((await loggedIn(forsideUrl))!)!;
      return Student(studentId, gymId);
    } catch (e) {
      return null;
    }
  }
}
