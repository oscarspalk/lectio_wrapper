import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/types/absence/entry.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

Future<List<AbsenceEntry>> extractAbsence(BeautifulSoup soup) async {
  List<AbsenceEntry> entries = [];
  Bs4Element? absenceTable =
      soup.find('*', id: 's_m_Content_Content_SFTabStudentAbsenceDataTable');
  if (absenceTable == null) {
    return entries;
  }
  List<Bs4Element> unparsedRows = absenceTable.children[0].children;
  unparsedRows.removeRange(0, 3);
  unparsedRows.removeLast();
  for (var i = 0; i < unparsedRows.length; i++) {
    var row = unparsedRows[i];

    // get team
    var teamColumn = row.children[0];
    var teamLink = teamColumn.children[0];
    var teamName = teamLink.text;
    var teamId =
        queriesFromSoup(teamLink.getAttrValue("href")!)['holdelementid']!;
    var team = Team(teamName, teamId);

    // current percent

    // current moduler
  }
  return entries;
}

double extractAbsencePercent(Bs4Element cell) {
  double currentPercent = 0.0;
  var currentPercentText = cell.text;
  if (currentPercentText.isNotEmpty) {
    var textWithoutPercent = currentPercentText.replaceAll(r"%", '');
    double normalised = double.parse(textWithoutPercent);
    currentPercent = normalised / 100.0;
  }
  return currentPercent;
}

AbsenceFraction extractAbsenceFraction(Bs4Element cell) {
  AbsenceFraction currentModules = AbsenceFraction(0, 0);
  var currentModulerText = cell.text;
  if (currentModulerText.isNotEmpty) {
    List<String> currentModulesPieces = currentModulerText.split(r"/");
    currentModules = AbsenceFraction(double.parse(currentModulesPieces[0]),
        double.parse(currentModulesPieces[1]));
  }
  return currentModules;
}
