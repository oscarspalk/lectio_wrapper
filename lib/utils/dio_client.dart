import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

final CookieJar lppCookies = CookieJar();

Function()? _cookieCallback;

Dio get lppDio => _lppDio;

void setCookieCallback(Function() callback) {
  _cookieCallback = callback;
}

final Dio _lppDio = Dio(BaseOptions(
  followRedirects: false,
  validateStatus: (status) {
    return status != null && status >= 200 && status < 400;
  },
))
  ..interceptors.add(CookieManager(lppCookies));

void addCookies(Uri uri, List<Cookie> cookies) {
  lppCookies.saveFromResponse(uri, cookies);
}

Future<Response> request(String url,
    {Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress}) async {
  bool requesting = true;
  Uri uri = Uri.parse(url);
  String redirect = "";
  while (requesting) {
    String redirectStr = redirect.isNotEmpty
        ? "${redirect.startsWith("https") ? "" : "${uri.scheme}://${uri.authority}"}$redirect"
        : url;
    Response request;
    if (redirect.isEmpty) {
      request = await _lppDio.request(redirectStr,
          data: data,
          queryParameters: queryParameters,
          cancelToken: cancelToken,
          options: options,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress);
    } else {
      request = await _lppDio.get(redirectStr);
    }

    var location = request.headers.value(HttpHeaders.locationHeader);
    if (location != null &&
        location.isNotEmpty &&
        !redirectStr.endsWith(location)) {
      redirect = location;
    } else {
      if (_cookieCallback != null) {
        _cookieCallback!();
      }
      return request;
    }
  }
}
