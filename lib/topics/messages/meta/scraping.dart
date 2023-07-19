import 'dart:convert';

import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/types/message/meta/meta.dart';
import 'package:lectio_wrapper/types/primitives/person.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

class ScriptContent {
  Map<String, String> queries;
  String url;
  ScriptContent(this.queries, this.url);
}

List<ScriptContent> extractScripts(BeautifulSoup soup) {
  List<Bs4Element> scripts = soup.findAll("script");
  List<ScriptContent> actualScripts = [];
  for (var script in scripts) {
    var src = script.getAttrValue("src");
    if (src != null && src.contains("type")) {
      actualScripts.add(ScriptContent(queriesFromSoup(src), src));
    }
  }
  return actualScripts;
}

List<MetaDataEntry> extractEntries(String body, String url) {
  var text = utf8.decode(BeautifulSoup(body).body!.text.codeUnits);
  String withOutVariableDeclaration = text.substring(text.indexOf('=')).trim();
  int firstBracket = withOutVariableDeclaration.indexOf('[');
  String removedFirstBracket =
      withOutVariableDeclaration.substring(firstBracket + 2);
  int lastBracket = removedFirstBracket.lastIndexOf(']');
  String removedLastBracket = removedFirstBracket.substring(0, lastBracket);
  List<String> studentStringEntries = removedLastBracket
      .split(",\n")
      .where((element) =>
          !(element.contains("inaktiv") || element.contains("Brobyg")))
      .toList();
  return studentStringEntries.map((student) => _extractEntry(student)).toList();
}

MetaDataEntry _extractEntry(String person) {
  int firstQuote = person.indexOf("\"");
  int secondQuote = person.indexOf("\"", firstQuote + 1);
  String nameWithClass = person.substring(firstQuote + 1, secondQuote);
  int firstParentes = nameWithClass.indexOf('(');
  int secondParentes = nameWithClass.indexOf(')');
  String? classOrInitial;
  String name;
  int nextFirstQuote = person.indexOf("\"", secondQuote + 1);
  int nextSecondQuote = person.indexOf("\"", nextFirstQuote + 1);
  if (firstParentes != -1 && secondParentes != -1) {
    classOrInitial = nameWithClass.substring(firstParentes + 1, secondParentes);
    name = nameWithClass.substring(0, firstParentes).trim();
  } else {
    name = nameWithClass;
  }
  String id = person.substring(nextFirstQuote + 1, nextSecondQuote);
  return classOrInitial != null
      ? Person(id, name, initialsOrClass: classOrInitial)
      : MetaDataEntry(id, name);
}
