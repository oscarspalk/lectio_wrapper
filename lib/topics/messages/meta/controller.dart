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
    if (student.demo) {
      return null;
    }
    var soup = await student.messages.newMessage();
    if (soup != null) {
      var scripts = extractScripts(soup);
      for (var script in scripts) {
        if(script.text.contains("Autocomplete.registerDataSetUrl")){
          var fetchedContent = await _getUrls(script.text);
          for(var fetchedScript in fetchedContent){
          await _loadScript(fetchedScript);

          }
        }
      }

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

  Future<List<ScriptContent>> _getUrls(String content) async{
    List<ScriptContent> urls = [];
    var urlStart = "/lectio";
    var urlEnd = "'";
    String currentContent = content;
    var nextUrlStart = currentContent.indexOf(urlStart);
    while(nextUrlStart != -1){
      var nextEnd = currentContent.indexOf(urlEnd, nextUrlStart);
      var extractedUrl = currentContent.substring(nextUrlStart, nextEnd);
      currentContent = currentContent.substring(nextEnd);
      nextUrlStart = currentContent.indexOf(urlStart);
      urls.add(ScriptContent({}, extractedUrl));
    }
    

    return urls;
  }

  Future<void> _loadScript(ScriptContent script) async {
    String url = "https://www.lectio.dk${script.url}";
    var data = await request(url);
    var dataMap = data.data;
    if(dataMap is Map){
      if(dataMap.containsKey("key") && dataMap.containsKey("items")){
        
      var key = dataMap["key"];
      var items = dataMap["items"];
      List<MetaDataEntry> entries = [];
      for(var item in items){
        var entry = MetaDataEntry(id: item[1], name: item[0]);
        entries.add(entry);
      }
        if(key.contains('bcteacher')){
      teachers = entries;
    }
    else if (key.contains('bcstudent')){
        students = entries;
    }
    else if(key.contains('bchold')){
        teams = entries;

    }
    else if(key.contains('bcgroup')){
               groups = entries;


    }
      }
    }
   
    
    
  }
}
