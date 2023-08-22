import 'dart:io';

import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:dio/dio.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

class InvalidCredentialsError extends Error {}

const String laererIdKey = 'laererid';
const String elevIdKey = 'elevid';
const String appStartUrlName = 'msapplication-starturl';

class Account {
  int gymId;
  String username;
  String password;
  Account(this.gymId, this.username, this.password);

  Student? checkLoggedIn(BeautifulSoup soup, int gymId) {
    var metaElement = soup
        .find('*', attrs: {'name': appStartUrlName})?.getAttrValue('content');
    if (metaElement != null) {
      var queries = queriesFromSoup(metaElement);
      if (queries.containsKey(elevIdKey)) {
        return Student(queries[elevIdKey]!, gymId);
      }
      if (queries.containsKey(laererIdKey)) {
        return Student(queries[laererIdKey]!, gymId, teacher: true);
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
      var student = checkLoggedIn(BeautifulSoup(forsideSoup.data), gymId);
      if (student == null) {
        throw InvalidCredentialsError();
      }
      return student;
    } catch (e) {
      return null;
    }
  }
}
