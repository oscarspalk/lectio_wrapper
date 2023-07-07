import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:intl/intl.dart';
import 'package:lectio_wrapper/topics/absence/scraping.dart';
import 'package:lectio_wrapper/topics/weeks/scraping.dart';
import 'package:lectio_wrapper/types/absence/cause.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

DateFormat registeredTimeFormat = DateFormat("dd/MM-yyyy HH:mm");

Future<List<AbsenceCauseEntry>> extractAbsenceCauses(BeautifulSoup soup) async {
  List<AbsenceCauseEntry> causesEntries = [];
  // get registrations table
  Bs4Element registrationTable = soup
      .find('*', id: 's_m_Content_Content_FatabAbsenceFravaerGV')!
      .children[0];
  // get unregistered table
  Bs4Element unregistrationTable = soup
      .find('*', id: 's_m_Content_Content_FatabMissingAarsagerGV')!
      .children[0];

  if (registrationTable.children.length > 1) {
    var listOfRegistrations = registrationTable.children;
    listOfRegistrations.removeAt(0);
    for (var row in listOfRegistrations) {
      var cause = extractAbsenceCause(row, false);
      if (cause != null) {
        causesEntries.add(cause);
      }
    }
  }

  if (unregistrationTable.children.length > 1) {
    var listOfRegistrations = unregistrationTable.children;
    listOfRegistrations.removeAt(0);
    for (var row in listOfRegistrations) {
      var cause = extractAbsenceCause(row, true);
      if (cause != null) {
        causesEntries.add(cause);
      }
    }
  }

  return causesEntries;
}

AbsenceCauseEntry? extractAbsenceCause(Bs4Element row, bool missingCause) {
  try {
    double absencePercent = extractAbsencePercent(row.children[3]);
    AbsenceCauses? cause = AbsenceCauses.values.firstWhere((element) =>
        element.name.toLowerCase() == row.children[8].text.toLowerCase());
    String extendedCause = row.children[9].text;
    String id = queriesFromSoup(
        row.children[10].children[0].getAttrValue("href")!)['id']!;
    String note = row.children[7].text;
    String registeredDateString = row.children[5].text;
    DateTime registered = registeredTimeFormat.parse(registeredDateString);
    var event = extractModul(row.children[2].children[0]);
    return AbsenceCauseEntry(id, absencePercent, cause, extendedCause, note,
        registered, event, missingCause);
  } catch (_) {
    return null;
  }
}
