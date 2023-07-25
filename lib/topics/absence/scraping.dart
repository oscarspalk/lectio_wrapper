import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/types/absence/entry.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

Future<List<AbsenceEntry>> extractAbsence(
    BeautifulSoup soup, Student student) async {
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
    var entry = extractAbsenceEntry(row);
    if (entry != null) {
      entries.add(entry);
    }
    // get team
  }
  return entries;
}

AbsenceEntry? extractAbsenceEntry(Bs4Element row) {
  try {
    var teamColumn = row.children[0];
    var teamLink = teamColumn.children[0];
    var teamName = teamLink.text;
    var teamId =
        "HE${queriesFromSoup(teamLink.getAttrValue("href")!)['holdelementid']!}";
    //var teamContext = (await student.context.get(teamId)) as TeamContext;
    var team = Team(name: teamName, id: teamId, displayName: teamName);
    List<double> percentages = [];
    List<AbsenceFraction> fractions = [];
    for (int i = 0; i < 8; i++) {
      Bs4Element column = row.children[1 + i];
      if (i % 2 == 0) {
        percentages.add(extractAbsencePercent(column));
      } else {
        fractions.add(extractAbsenceFraction(column));
      }
    }
    return AbsenceEntry(
        team: team,
        regular: RegularEntryData(
            currentPercent: percentages[0],
            currentModules: fractions[0],
            finalPercent: percentages[1],
            finalModules: fractions[1]),
        assignment: AssignmentEntryData(
            currentPercent: percentages[2],
            currentStudentTime: fractions[2],
            finalPercent: percentages[3],
            finalStudentTime: fractions[3]));
  } catch (e) {
    return null;
  }
}

double extractAbsencePercent(Bs4Element cell) {
  double currentPercent = 0.0;
  var currentPercentText = cell.text;
  if (currentPercentText.isNotEmpty) {
    var textWithoutPercent = currentPercentText.replaceAll(r"%", '');
    var textWithoutComma = textWithoutPercent.replaceAll(r",", '.');
    double normalised = double.parse(textWithoutComma);
    currentPercent = normalised / 100.0;
  }
  return currentPercent;
}

AbsenceFraction extractAbsenceFraction(Bs4Element cell) {
  AbsenceFraction currentModules = AbsenceFraction(current: 0, total: 0);
  var currentModulerText = cell.text;
  if (currentModulerText.isNotEmpty) {
    List<String> currentModulesPieces =
        currentModulerText.replaceAll(r",", '.').split(r"/");
    currentModules = AbsenceFraction(
        current: double.parse(currentModulesPieces[0]),
        total: double.parse(currentModulesPieces[1]));
  }
  return currentModules;
}
