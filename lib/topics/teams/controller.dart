import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/topics/teams/scraping.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';
import 'package:requests/requests.dart';

class TeamsController {
  final Student student;
  TeamsController(this.student);

  Future<List<Team>> list() async {
    var url = student.buildUrl('forside.aspx');
    var req = await Requests.get(url);
    return extractTeams(BeautifulSoup(req.body));
  }

  Future<ModuleStatistics?> get(Team team) async {
    var url =
        student.buildUrl('subnav/modulregnskab.aspx?holdelementid=${team.id}');
    var req = await Requests.get(url);
    return extractModuleStats(BeautifulSoup(req.body));
  }
}
