import 'package:lectio_wrapper/topics/messages/meta/scraping.dart';
import 'package:lectio_wrapper/types/message/meta/meta.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

class MessageMetaController extends Controller {
  List<MetaDataEntry> students = [];
  List<MetaDataEntry> teachers = [];
  List<MetaDataEntry> groups = [];
  List<MetaDataEntry> teams = [];
  List<MetaDataEntry> favorites = [];
  List<MetaDataEntry> _favorites = [];
  MessageMetaController(super.student);

  Future<MessageMetaData?> get() async {
    var soup = await student.messages.newMessage();
    if (soup != null) {
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
    return null;
  }

  Future<void> _loadScript(ScriptContent script) async {
    String url = "https://www.lectio.dk${script.url}";
    var data = await request(url);
    var entries = extractEntries(data.data, url);
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
