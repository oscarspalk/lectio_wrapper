import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/types/context/team.dart';

TeamContext extractTeamContext(BeautifulSoup soup) {
  Bs4Element ownerElement = soup.findAll("*", class_: 'textLeft').first;
  Bs4Element tableRow = ownerElement.children[0].children[0].children[0]
      .children[0].children[0].children[0].children[0];
  return TeamContext(tableRow.children[1].text);
}
