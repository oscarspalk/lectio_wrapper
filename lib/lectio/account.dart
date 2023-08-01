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
    var link = soup.find('*', id: 's_m_HeaderContent_subnavigator_ctl01');
    if (link != null) {
      var src = link.getAttrValue("href");
      return queriesFromSoup(src!)['elevid']!;
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
      String forsideUrl = "https://www.lectio.dk/lectio/$gymId/forside.aspx";
      String loginUrl = "https://www.lectio.dk/lectio/$gymId/login.aspx";
      var loginGet = await lppDio.get(loginUrl);
      BeautifulSoup bs = BeautifulSoup(loginGet.data);
      Map<String, String?> extracted =
          await extractASPData(bs, "m\$Content\$submitbtn2");

      extracted["m\$Content\$username"] = username;
      extracted["m\$Content\$password"] = password;
      if (autologin) extracted[r'm$Content$AutologinCbx'] = "on";
      await lppDio
          .post(loginUrl,
              data: extracted,
              options: Options(
                contentType: "application/x-www-form-urlencoded",
                followRedirects: false,
                validateStatus: (status) {
                  if (status != null) {
                    return status < 500;
                  }
                  return false;
                },
              ))
          .timeout(const Duration(seconds: 5));
      var forsideSoup = await lppDio.get(forsideUrl);
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
