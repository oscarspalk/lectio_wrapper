import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/topics/messages/meta/scraping.dart';
import 'package:lectio_wrapper/types/message/meta/meta.dart';
import 'package:requests/requests.dart';

class StudentsController {
  final Student student;
  List<MetaDataEntry> students = [];
  List<MetaDataEntry> teachers = [];
  List<MetaDataEntry> groups = [];
  List<MetaDataEntry> teams = [];
  List<MetaDataEntry> favorites = [];
  List<MetaDataEntry> _favorites = [];
  StudentsController(this.student);

  Future<MessageMetaData> get() async {
    var soup = await student.messages.newMessage();
    var scripts = extractScripts(soup);
    await Future.wait(scripts.map((e) => _loadScript(e)));

    List<MetaDataEntry> concatenatedEntries = [
      ...students,
      ...teachers,
      ...groups,
      ...teams
    ];

    for (var favorite in _favorites) {
      List<MetaDataEntry> matches = concatenatedEntries
          .where((element) => element.id == favorite.id)
          .toList();
      if (matches.isNotEmpty) {
        favorites.add(matches[0]);
      }
    }

    return MessageMetaData(favorites, groups, students, teams, teachers);
  }

  Future<void> _loadScript(ScriptContent script) async {
    String url = "https://www.lectio.dk${script.url}";
    var data = await Requests.get(url);
    var entries = extractEntries(data.body, url);
    switch (script.queries['type']) {
      case 'bcteacher':
        teachers = entries;
        break;
      case 'bcstudent':
        students = entries;
        break;
      case 'bchold':
        teams = entries;
        break;
      case 'bcgroup':
        groups = entries;
        break;
      case 'favorites':
        _favorites = entries;
        break;
    }
  }
}
