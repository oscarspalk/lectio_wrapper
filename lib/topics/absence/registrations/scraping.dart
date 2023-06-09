import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/topics/absence/scraping.dart';
import 'package:lectio_wrapper/types/absence/cause.dart';

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
    for (var row in registrationTable.children) {
      causesEntries.add(extractAbsenceCause(row));
    }
  }

  return causesEntries;
}

AbsenceCauseEntry extractAbsenceCause(Bs4Element row) {
  double absencePercent = extractAbsencePercent(row.children[3]);
  AbsenceCauses? cause = row.children[8].text as AbsenceCauses;
  String extendedCause = row.children[9].text;

  //return AbsenceCauseEntry(id, absencePercent, cause, expandedCause, note, registered, module, missingCause)
}
