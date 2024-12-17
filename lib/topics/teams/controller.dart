import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/topics/teams/scraping.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

class TeamsController extends Controller {
  TeamsController(super.student);

  Future<List<Team>> list() async {
    if (student.demo) {
      return List.generate(
          10, (i) => Team(name: "Dansk", id: "", displayName: "Dansk"));
    }
    var url = student.buildUrl('forside.aspx');
    var req = await request(url);
    return extractTeams(BeautifulSoup(req.data));
  }

  Future<ModuleStatistics?> get(Team team) async {
    if (student.demo) {
      return ModuleStatistics(
          deviation: 0.4, total: 20, hosted: 20, normal: 204);
    }
    var url =
        student.buildUrl('subnav/modulregnskab.aspx?holdelementid=${team.id}');
    var req = await request(url);
    return extractModuleStats(BeautifulSoup(req.data));
  }
}
