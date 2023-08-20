import 'dart:io';

import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:dio/dio.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

class InvalidCredentialsError extends Error {}

class Headers {
  String name;
  String value;
  Headers(this.name, this.value);
}

class Account {
  int gymId;
  String username;
  String password;
  Account(this.gymId, this.username, this.password);

  String? checkLoggedIn(BeautifulSoup soup) {
    var links = soup.find('*', id: 's_m_HeaderContent_subnavigator_generic_tr');

    if (links != null) {
      for (var link in links.findAll('a')) {
        var href = link.getAttrValue("href");
        var elevId = href != null ? queriesFromSoup(href)['elevid'] : null;
        if (elevId != null) {
          return elevId;
        }
      }
    }

    return null;
  }

  Future<Student?> loginWithCookies(
      List<Cookie> cookies, String studentId) async {
    addCookies(Uri.parse("https://www.lectio.dk"), cookies);
    var student = Student(studentId, gymId);
    return student;
  }

  Future<Student?> login({bool autologin = true}) async {
    try {
      String loginUrl = "https://www.lectio.dk/lectio/$gymId/login.aspx";
      var loginGet = await request(loginUrl);
      BeautifulSoup bs = BeautifulSoup(loginGet.data);
      Map<String, String?> extracted =
          await extractASPData(bs, "m\$Content\$submitbtn2");

      extracted["m\$Content\$username"] = username;
      extracted["m\$Content\$password"] = password;
      if (autologin) extracted[r'm$Content$AutologinCbx'] = "on";
      var forsideSoup = await request(loginUrl,
          data: extracted,
          options: Options(
            method: "POST",
            contentType: "application/x-www-form-urlencoded",
          )).timeout(const Duration(seconds: 5));
      String? studentId = checkLoggedIn(BeautifulSoup(forsideSoup.data));
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
