import 'dart:convert';
import 'dart:io';

import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
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

  Future<Student?> loginWithCookies(String cookie) async {
    /* Requests.setStoredCookies(
        "www.lectio.dk", CookieJar.parseCookiesString(cookie));
    String forsideUrl = "https://www.lectio.dk/lectio/$gymId/forside.aspx";

    String? studentId =
        checkLoggedIn(BeautifulSoup((await lppDio.get(forsideUrl)).data));
    if (studentId == null) {
      throw InvalidCredentialsError();
    }
    var student = Student(studentId, gymId);
    return student;*/
    return null;
  }

  Future<Student?> login() async {
    //try {
    String loginUrl = "https://www.lectio.dk/lectio/$gymId/login.aspx";
    var loginGet = await lppDio.get(loginUrl);
    BeautifulSoup bs = BeautifulSoup(loginGet.data);
    Map<String, String?> extracted =
        await extractASPData(bs, "m\$Content\$submitbtn2");

    extracted["m\$Content\$username"] = username;
    extracted["m\$Content\$password"] = password;
    extracted[r'm$Content$AutologinCbx'] = "on";
    // not figured out yet
    var httpClient = HttpClient();
    Uri uri = Uri.parse(loginUrl);
    var request = await httpClient.postUrl(uri);
    var cooks =
        await lppCookies.loadForRequest(Uri.parse("https://www.lectio.dk"));
    var cookieString = cooks.map((e) => "${e.name}=${e.value}").join(';');
    request.headers.set('cookie', cookieString);
    request.headers.set("Content-Type", "application/x-www-form-urlencoded");
    request.headers.set("User-Agent",
        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
    String bodyString =
        extracted.entries.map((e) => "${e.key}=${e.value}").join('&');
    List<int> bodyBytes = utf8.encode(bodyString);
    request.headers.set("Content-Length", bodyBytes.length.toString());
    request.add(bodyBytes);

    var response = await request.close();
    /*var loggedInSoup = await lppDio
          .post(loginUrl,
              data: extracted,
              options:
                  Options(contentType: "application/x-www-form-urlencoded"))
          .timeout(const Duration(seconds: 5));
      String? studentId = checkLoggedIn(BeautifulSoup(loggedInSoup.data));
      if (studentId == null) {
        throw InvalidCredentialsError();
      }
      var student = Student(studentId, gymId);
      return student;*/
    List<Headers> entries = [];
    response.headers.forEach(
      (name, values) {
        if (name == "set-cookie") {
          entries.add(Headers(name, values.join(';')));
        }
      },
    );
    var transformed = await response.transform(utf8.decoder).join();
    File file = File("/Users/ogs/lectio_privat/lectio_wrapper/out/login.html");
    await file.writeAsString(transformed);
    debugPrint("he");
    return Student('', gymId);
    /*} catch (e) {
      return null;
    }*/
  }
}
