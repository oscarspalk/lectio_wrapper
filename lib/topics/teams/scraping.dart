import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/topics/absence/scraping.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

List<Team> extractTeams(BeautifulSoup soup) {
  List<Team> teams = [];
  Bs4Element? table =
      soup.find('*', id: 's_m_Content_Content_HoldAndGroupList');

  if (table != null) {
    List<Bs4Element> tRows = table.findAll('tr', class_: 'textTop textLeft');
    if (tRows.isNotEmpty) {
      List<Bs4Element> teamRows = tRows[0].children[1].children[0].children;
      for (var teamRow in teamRows) {
        var linkEl = teamRow.find('a')!;
        var name = linkEl.text;
        var id =
            queriesFromSoup(linkEl.getAttrValue('href')!)['holdelementid']!;
        teams.add(Team(name: name, id: id, displayName: name));
      }
    }
  }
  return teams;
}

ModuleStatistics? extractModuleStats(BeautifulSoup soup) {
  var table = soup.find('*', id: 's_m_Content_Content_afholdtelektionertbl');
  if (table != null) {
    List<Bs4Element> tRows = table.findAll('tr');
    for (var tRow in tRows) {
      var tdMiddle = tRow.find('b');
      if (tdMiddle != null && tdMiddle.text.contains("Holdet:")) {
        var children = tRow.children.reversed.toList();
        var deviation = extractAbsencePercent(children[0]);
        var normal = int.tryParse(children[1].text);
        var total = int.tryParse(children[2].text);
        var hosted = int.tryParse(tRow.children[1].text);
        if (normal != null && total != null && hosted != null) {
          return ModuleStatistics(
              deviation: deviation,
              total: total,
              normal: normal,
              hosted: hosted);
        }
      }
    }
  }
  return null;
}
