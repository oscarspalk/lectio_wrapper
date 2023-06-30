import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/types/context/team.dart';

TeamContext extractTeamContext(BeautifulSoup soup, String id) {
  Bs4Element ownerElement = soup.findAll("*", class_: 'textLeft').first;
  List<String> withSubject = ownerElement.text.split(":");
  return TeamContext(withSubject[1].trim());
}
