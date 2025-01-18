import 'dart:async';
import 'dart:io';

import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:dio/dio.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';
import 'package:lectio_wrapper/utils/follow_request.dart';
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

  Student demoLogin() {
    return Student("54299107744", 256, demo: true);
  }

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
    await addCookies(Uri.parse("https://www.lectio.dk"), cookies);
    var student = Student(studentId, gymId);
    var checkingUrl = "https://www.lectio.dk/lectio/$gymId/forside.aspx";
    var returnUrl = await followingRequest(
      checkingUrl,
      (url) {
        return url == null || url.isEmpty;
      },
    );
    if (returnUrl == null) {
      return null;
    }
    setAutologin();
    return student;
  }

  Future<(String?, List<Cookie>)> getUniloginUrl() async {
    String loginUrl = "https://www.lectio.dk/lectio/$gymId/login.aspx";

    var lectioUri = Uri.https("www.lectio.dk");
    String? uniloginUrl = await followingRequest(
      loginUrl,
      (url) {
        var maybeUrl = Uri.tryParse(url ?? "");
        return !(url?.startsWith("https://www.lectio.dk") ?? true) &&
            maybeUrl != null;
      },
    );

    var loadedCookies = await lppCookies.loadForRequest(lectioUri);

    return (uniloginUrl, loadedCookies);
  }

  FutureOr<Student> uniloginLogin(String url) async {
    await request(url, options: Options(followRedirects: false));
    var student = await checkIfLoggedIn();
    if (student == null) {
      throw InvalidCredentialsError();
    }
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
      }
      await request<String>(loginUrl,
          data: extracted,
          options: Options(
              followRedirects: false,
              method: "POST",
              contentType: "application/x-www-form-urlencoded",
              headers: {
                "Cache-Control": "no-cache",
                "Referer": "https://www.lectio.dk"
              })).timeout(const Duration(seconds: 5));
      await addCookies(
          Uri.https("www.lectio.dk"), [Cookie("isloggedin3", "Y")]);

      var student = await checkIfLoggedIn();
      if (student == null) {
        throw InvalidCredentialsError();
      }
      setAutologin();
      return student;
    } catch (e) {
      return null;
    }
  }

  FutureOr<Student?> checkIfLoggedIn() async {
    var forsideSoup = await request<String>(
      "https://www.lectio.dk/lectio/$gymId/forside.aspx",
    );

    var student =
        checkLoggedIn(BeautifulSoup(forsideSoup.data as String), gymId);
    return student;
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
