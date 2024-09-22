import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/types/context/group.dart';
import 'package:lectio_wrapper/types/context/student.dart';
import 'package:lectio_wrapper/types/context/team.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

TeamContext extractTeamContext(BeautifulSoup soup, String rootId) {
  Bs4Element ownerElement = soup.findAll("*", class_: 'textLeft').first;
  List<String> withSubject = ownerElement.text.split(":");
  return TeamContext(withSubject[1].trim(), rootId);
}

StudentContext extractStudentContext(BeautifulSoup soup, String rootId) {
  Bs4Element imageElement =
      soup.find('*', id: 'ctl00_Content_ImageCtrlthumbimage')!;
  Bs4Element? titleElement = soup.find('*', id: 'ctl00_Content_cctitle');
  String id = queriesFromSoup(imageElement.getAttrValue("src")!)['pictureid'] ??
      "default";
  String name = "";
  if (titleElement != null) {
    List<String> typeAndName = titleElement.text.split("-");
    if (typeAndName.length == 2) {
      name = typeAndName[1].trim();
    }
  }
  return StudentContext(id, rootId, name);
}

GroupContext? extractGroupContext(BeautifulSoup soup) {
  List<Bs4Element> links = soup.findAll('a');
  List<Map<String, String>> queries =
      links.map((link) => queriesFromSoup(link.getAttrValue("href"))).toList();
  const holdIdKey = "holdelementid";
  for (var query in queries) {
    if (query.containsKey(holdIdKey)) {
      return GroupContext(query[holdIdKey]!);
    }
  }
  return null;
}
