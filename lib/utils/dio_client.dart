import 'dart:io';

import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

final CookieJar lppCookies = CookieJar();

Future<void> Function()? _loginCallback;

Dio get lppDio => _lppDio;

void setLoginCallback(Future<void> Function() callback) {
  _loginCallback = callback;
}

final Dio _lppDio = Dio(BaseOptions(
  maxRedirects: 5,
  followRedirects: true,
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
  var dioRequest = await _lppDio.request(url,
      data: data,
      onReceiveProgress: onReceiveProgress,
      onSendProgress: onSendProgress,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      options: options);

  var bsElement =
      dioRequest.data is String ? BeautifulSoup(dioRequest.data) : null;
  var headerElement = bsElement?.find('*', id: 'MainTitle');
  if (headerElement != null &&
      headerElement.text.toLowerCase().contains("log ind") &&
      !url.endsWith("login.aspx")) {
    if (_loginCallback != null) {
      await _loginCallback!();
      return await request(url,
          data: data,
          queryParameters: queryParameters,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress,
          onSendProgress: onSendProgress,
          options: options);
    }
  }
  return dioRequest;
}
