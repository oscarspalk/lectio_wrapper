import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

final CookieJar lppCookies = CookieJar();

final Dio lppDio = Dio()..interceptors.add(CookieManager(lppCookies));

void addCookies(Uri uri, List<Cookie> cookies) {
  lppCookies.saveFromResponse(uri, cookies);
}
