import 'dart:async';
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
    await addCookies(Uri.parse("https://www.lectio.dk"), cookies);
    var student = Student(studentId, gymId);
    int i = 0;
    bool found = false;
    var checkingUrl = "https://www.lectio.dk/lectio/$gymId/forside.aspx";
    while (!found && i < 5) {
      var requestCookies =
          await lppCookies.loadForRequest(Uri.parse("https://www.lectio.dk"));
      var loginGet = await request<String>(checkingUrl,
          options: Options(followRedirects: false, headers: {
            "Cache-Control": "no-cache",
            "Referer": "https://www.lectio.dk"
          }),
          isLogin: true);
      var locationHeader = loginGet.headers.value(HttpHeaders.locationHeader);
      var currentCookies =
          await lppCookies.loadForRequest(Uri.parse("https://www.lectio.dk"));
      if (locationHeader == null || locationHeader.isEmpty) {
        found = true;
      } else {
        checkingUrl = "https://www.lectio.dk$locationHeader";
      }
      i++;
    }
    if (found == false) {
      return null;
    }
    setAutologin();
    return student;
  }

  Future<(String?, List<Cookie>)> getUniloginUrl() async {
    String loginUrl = "https://www.lectio.dk/lectio/$gymId/login.aspx";
    String? uniloginUrl;
    bool found = false;
    var lectioUri = Uri.https("www.lectio.dk");
    int i = 0;
    while (!found && i < 3) {
      var loginGet = await request<String>(loginUrl,
          options: Options(followRedirects: false));
      var locationHeader = loginGet.headers.value(HttpHeaders.locationHeader);
      var maybeUrl = Uri.tryParse(locationHeader ?? "");
      if (!(locationHeader?.startsWith("https://www.lectio.dk") ?? true) &&
          maybeUrl != null) {
        uniloginUrl = locationHeader;
        found = true;
      } else {
        loginUrl = "https://www.lectio.dk/lectio/$gymId$locationHeader";
      }
      i++;
    }

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
