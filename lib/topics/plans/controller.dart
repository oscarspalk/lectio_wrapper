import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/topics/plans/scraping.dart';
import 'package:lectio_wrapper/types/plan/study_plan.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

class PlansController extends Controller {
  PlansController(super.student);

  Future<List<StudyTeamEntry>> list() async {
    var url = student.buildUrl(
        'studieplan.aspx?displaytype=ugeteksttabel&elevid=${student.studentId}');
    var req = await request(url);
    return extractPlans(BeautifulSoup(req.data));
  }

  Future<StudyPlanEntry> get(StudyPlanRef ref) async {
    var url = student.buildUrl('studieplan/forloeb_vis.aspx?phaseid=${ref.id}');
    var req = await request(url);
    return extractPlanEntry(BeautifulSoup(req.data));
  }
}
