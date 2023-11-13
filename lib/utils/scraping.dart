import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:dio/dio.dart';
import 'package:lectio_wrapper/lectio/basic_info.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

Map<String, String> extractASPData(BeautifulSoup soup, String target) {
  Map<String, String> data = {"__EVENTTARGET": target};
  List<String> checkStrings = [
    "__VIEWSTATEX",
    "__EVENTVALIDATION",
    "__EVENTARGUMENT",
    "__SCROLLPOSITION",
    "__VIEWSTATEY_KEY",
    "__VIEWSTATE",
    "masterfootervalue"
  ];
  for (var name in checkStrings) {
    try {
      var element = soup.find("*", id: name);
      data[name] = element!.getAttrValue("value")!;
    } catch (e) {
      data[name] = "";
    }
  }
  return data;
}

Map<String, String> queriesFromSoup(String? url) {
  if (url == null) {
    return <String, String>{};
  }
  int splitLocation = url.indexOf("?");
  var keys = Map.fromEntries(url
      .substring(splitLocation + 1)
      .replaceAll("#", "")
      .split("&")
      .map((keyValue) {
    List<String> keyAndValue = keyValue.split("=");
    if (keyAndValue.length < 2) {
      return const MapEntry("", "");
    }
    return MapEntry(keyAndValue[0], keyAndValue[1]);
  }));
  return keys;
}

String? getElevId(BeautifulSoup soup) {
  String? path = soup.find("meta",
      attrs: {'name': 'msapplication-starturl'})!.getAttrValue('content');
  return queriesFromSoup(path ?? "")['elevid'];
}

Future<BeautifulSoup?> loggedIn(String url, {Map<String, String>? data}) async {
  Response<String> response;
  if (data != null) {
    response = await request(url,
        data: data,
        options: Options(
            method: 'POST',
            contentType: "application/x-www-form-urlencoded",
            headers: {"Referer": "https://www.lectio.dk"}));
  } else {
    response = await request(url);
  }
  if (response.data is String) {
    BeautifulSoup soup = BeautifulSoup(response.data as String);
    if (response.realUri.toString().contains("login.aspx?prevurl")) {
      return null;
    } else {
      return soup;
    }
  }
  return null;
}

String regToStr(RegExpMatch match) {
  return match.input.substring(match.start, match.end);
}

List<String> states = ["Aflyst!", "Ændret!"];

Future<BasicInfo> extractBasicInfo(BeautifulSoup soup) async {
  String? src = soup
      .find("img", id: "s_m_HeaderContent_picctrlthumbimage")!
      .attributes['src'];
  String pictureId = "";
  if (src != null && src.contains("pictureid")) {
    pictureId = queriesFromSoup(src)['pictureid'] ?? "";
  }
  String nameWithExtra =
      soup.find('div', id: "s_m_HeaderContent_MainTitle")!.text;
  String name = nameWithExtra.substring(
      nameWithExtra.indexOf('n') + 2, nameWithExtra.indexOf(','));
  return BasicInfo(name, pictureId);
}

Future<BeautifulSoup?> postLoggedInPageSoup(
    String url, String target, Map<String, String> otherAspData) async {
  var getResponse = await loggedIn(url);
  if (getResponse != null) {
    var aspData = extractASPData(getResponse, target);
    aspData.addAll(otherAspData);
    return await loggedIn(url, data: aspData);
  } else {
    return null;
  }
}
