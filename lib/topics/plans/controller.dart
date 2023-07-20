import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/topics/plans/scraping.dart';
import 'package:lectio_wrapper/types/plan/study_plan.dart';
import 'package:requests/requests.dart';

class PlansController {
  final Student student;
  PlansController(this.student);

  Future<List<StudyTeamEntry>> list() async {
    var url = student.buildUrl(
        'studieplan.aspx?displaytype=ugeteksttabel&elevid=${student.studentId}');
    var req = await Requests.get(url);
    return extractPlans(BeautifulSoup(req.body));
  }

  Future<StudyPlanEntry> get(StudyPlanRef ref) async {
    var url = student.buildUrl('studieplan/forloeb_vis.aspx?phaseid=${ref.id}');
    var req = await Requests.get(url);
    return extractPlanEntry(BeautifulSoup(req.body));
  }
}
