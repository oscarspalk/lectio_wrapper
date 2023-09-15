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
  double absencePercent = extractAbsencePercent(row.children[2]);
  AbsenceType? type = _extractAbsenceType(row.children[3].text);
  AbsenceCauses? cause = AbsenceCauses.values
      .where((element) => row.children[6].text
          .toLowerCase()
          .startsWith(element.name.toLowerCase()))
      .firstOrNull;
  String? extendedCause =
      _extractExtendedCause(row.children.elementAtOrNull(6));
  Bs4Element? editButton = row.children[missingCause ? 6 : 7].find('a');
  String? id = queriesFromSoup(editButton?.getAttrValue("href"))['id'];

  String note = extendedCause ?? "";
  String registeredDateString = row.children[4].text;
  int firstSpace = registeredDateString.indexOf(RegExp(r'\s'));
  int secondSpace = registeredDateString.indexOf(RegExp(r'\s'), firstSpace + 1);
  String dateString = registeredDateString.substring(0, secondSpace);
  DateTime registered = registeredTimeFormat.parse(dateString);
  Bs4Element? skemaBrik = row.children[1].find('a');
  if (skemaBrik != null && id != null && type != null) {
    var event = extractModul(skemaBrik);
    return AbsenceCauseEntry(
        type: type,
        id: id,
        absence: absencePercent,
        cause: cause,
        expandedCause: extendedCause ?? "",
        note: note,
        registered: registered,
        module: event);
  }

  return null;
}

AbsenceType? _extractAbsenceType(String text) {
  for (var type in AbsenceType.values) {
    if (text.contains(type.alias)) {
      return type;
    }
  }
  return null;
}

String? _extractExtendedCause(Bs4Element? element) {
  if (element != null) {
    String text = element.text;
    int splitIndex = text.indexOf('\n');
    if (splitIndex != -1) {
      return text.substring(splitIndex).trim();
    }
  }
  return null;
}
