import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/topics/teams/scraping.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

class TeamsController extends Controller {
  TeamsController(super.student);

  Future<List<Team>> list() async {
    var url = student.buildUrl('forside.aspx');
    var req = await request(url);
    return extractTeams(BeautifulSoup(req.data));
  }

  Future<ModuleStatistics?> get(Team team) async {
    var url =
        student.buildUrl('subnav/modulregnskab.aspx?holdelementid=${team.id}');
    var req = await request(url);
    return extractModuleStats(BeautifulSoup(req.data));
  }
}
