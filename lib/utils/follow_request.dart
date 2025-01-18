import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

Future<String?> followingRequest(
    String url, bool Function(String? url) validateUrl,
    {int maxRetries = 10}) async {
  int i = 0;
  String checkingUrl = url;
  while (i < maxRetries) {
    var loginGet = await request<String>(checkingUrl,
        options: Options(followRedirects: false, headers: {
          "Cache-Control": "no-cache",
          "Referer": "https://www.lectio.dk"
        }),
        isLogin: true);
    var locationHeader = loginGet.headers.value(HttpHeaders.locationHeader);

    if (validateUrl(locationHeader)) {
      return locationHeader ?? "";
    } else {
      checkingUrl = "https://www.lectio.dk$locationHeader";
    }
    i++;
  }

  return null;
}
