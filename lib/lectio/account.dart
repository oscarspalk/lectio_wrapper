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
  Future<Account> Function()? loginError;
  Account(this.gymId, this.username, this.password, {this.loginError});

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
    setAutologin();
    return student;
  }

  Future<Student?> login({bool autologin = false}) async {
    try {
      String loginUrl = "https://www.lectio.dk/lectio/$gymId/login.aspx";
      var loginGet = await request<String>(loginUrl);
      await clearCookies();
      BeautifulSoup bs = BeautifulSoup(loginGet.data as String);
      Map<String, String?> extracted =
          extractASPData(bs, "m\$Content\$submitbtn2");

      extracted["m\$Content\$username"] = username;
      extracted["m\$Content\$password"] = password;
      if (autologin) {
        extracted[r'm$Content$AutologinCbx'] = "on";
      } else {
        extracted[r'm$Content$AutologinCbx'] = "off";
      }
      String content =
          extracted.entries.map((e) => "${e.key}:${e.value}").join("\n");
      var forsideSoup = await request<String>(loginUrl,
              data: extracted,
              options: Options(
                  method: "POST",
                  contentType: "application/x-www-form-urlencoded",
                  headers: {"Cache-Control": "no-cache"}))
          .timeout(const Duration(seconds: 5));
      var student =
          checkLoggedIn(BeautifulSoup(forsideSoup.data as String), gymId);
      if (student == null) {
        throw InvalidCredentialsError();
      }
      addCookies(Uri.https("www.lectio.dk"), [Cookie("isloggedin3", "Y")]);
      setAutologin();
      return student;
    } catch (e) {
      return null;
    }
  }

  setAutologin() {
    if (loginError != null) {
      setLoginCallback(() async {
        var account = await loginError!();
        await account.login();
      });
    }
  }
}
