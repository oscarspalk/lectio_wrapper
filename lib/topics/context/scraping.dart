import 'package:beautiful_soup_dart/beautiful_soup.dart';
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
  String id = queriesFromSoup(imageElement.getAttrValue("src")!)['pictureid']!;
  return StudentContext(id, rootId);
}
