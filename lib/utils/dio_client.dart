import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

class LoginException implements Exception {}

final CookieJar lppCookies = CookieJar();

int retries = 0;

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

Future<void> addCookies(Uri uri, List<Cookie> cookies) async {
  await lppCookies.saveFromResponse(uri, cookies);
}

Future<void> clearCookies() async {
  await lppCookies.deleteAll();
}

Future<Response<T>> request<T>(String url,
    {Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress}) async {
  Response<T>? dioRequest;
  try {
    dioRequest = await _lppDio.request<T>(url,
        data: data,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onSendProgress,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options);
    if (dioRequest.realUri.path.endsWith("login.aspx") &&
        !url.endsWith("login.aspx")) {
      throw LoginException();
    }
  } on LoginException {
    if (_loginCallback != null && retries < 10) {
      await _loginCallback!();
      retries++;
      dioRequest = await request<T>(url,
          data: data,
          queryParameters: queryParameters,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress,
          onSendProgress: onSendProgress,
          options: options);
    }
  } catch (e) {
    rethrow;
  }
  if (dioRequest == null) {
    throw Exception("Request went wrong");
  }
  return dioRequest;
}
