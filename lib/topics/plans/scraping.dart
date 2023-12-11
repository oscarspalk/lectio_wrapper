import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/types/message/meta/meta.dart';
import 'package:lectio_wrapper/types/plan/study_plan.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';
import 'package:lectio_wrapper/utils/dating.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

class _HeaderEntry {
  int colSpan;
  Team team;
  _HeaderEntry(this.colSpan, this.team);
}

List<StudyTeamEntry> extractPlans(BeautifulSoup soup) {
  List<StudyTeamEntry> plans = [];
  Bs4Element? table = soup.find('*', id: 's_m_Content_Content_spUge_theTable');
  if (table != null) {
    List<Bs4Element> elementHeaders = table.children[0].children[0].children;
    List<Bs4Element> teamEntriesWithEnds =
        table.children[0].children[1].children;
    if (elementHeaders.isNotEmpty && teamEntriesWithEnds.isNotEmpty) {
      List<Bs4Element> headers =
          elementHeaders.sublist(2, elementHeaders.length - 2);
      List<Bs4Element> teamEntries =
          teamEntriesWithEnds.sublist(2, teamEntriesWithEnds.length - 1);
      List<_HeaderEntry> teams =
          headers.map((header) => _extractHeader(header)).toList();

      for (var header in teams) {
        var elements = teamEntries.sublist(0, header.colSpan);
        teamEntries.removeRange(0, header.colSpan);
        List<StudyPlanRef> refs = [];
        for (var element in elements) {
          List<Bs4Element> phases = element.findAll('*', class_: 'phase');
          for (var phase in phases) {
            refs.add(_extractPlan(phase));
          }
        }
        plans.add(StudyTeamEntry(team: header.team, entries: refs));
      }
    }
  }
  return plans;
}

_HeaderEntry _extractHeader(Bs4Element header) {
  var colSpan = int.parse(header.getAttrValue('colspan')!);
  var aTag = header.children[0].children[0];
  var name = aTag.text;
  var id = aTag.getAttrValue('data-lectiocontextcard')!;
  return _HeaderEntry(colSpan, Team(name: name, id: id, displayName: name));
}

RegExp _periodReg = RegExp(r'\s-\s');

StudyPlanRef _extractPlan(Bs4Element row) {
  var aTag = row.children[0];
  var id = queriesFromSoup(aTag.getAttrValue('href')!)['phaseid']!;
  var additionalInfo = aTag.getAttrValue('data-tooltip')!.split('\n');
  String title = "";
  DateTime start = DateTime.now();
  DateTime end = DateTime.now();
  for (var info in additionalInfo) {
    var colonIndex = info.indexOf(':');
    if (colonIndex != -1) {
      var key = info.substring(0, colonIndex);
      var value = info.substring(colonIndex + 1);
      switch (key) {
        case 'Titel':
          title = value.trim();
          break;
        case 'Periode':
          var dates = value.split(_periodReg);
          start = parseLectioDate(dates[0].trim());
          end = parseLectioDate(dates[1].trim());
          break;
      }
    }
  }
  return StudyPlanRef(title: title, start: start, end: end, id: id);
}

StudyPlanEntry extractPlanEntry(BeautifulSoup soup) {
  var children = soup.find('*', id: 'phaseContent')!.find('tbody')!.children;
  var teacherElement = children[3].find('span')!;
  var teacherName = teacherElement.text;
  var teacherId = teacherElement.getAttrValue('data-lectiocontextcard')!;
  var teacher = MetaDataEntry(id: teacherId, name: teacherName);
  var description = children[5].children[1].text.trim();
  return StudyPlanEntry(teacher: teacher, description: description);
}
