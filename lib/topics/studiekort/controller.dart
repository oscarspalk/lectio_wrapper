import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/topics/studiekort/scraping.dart';
import 'package:lectio_wrapper/types/studiekort/kort.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';
import 'package:lectio_wrapper/utils/dio_image_provider.dart';

class StudiekortController extends Controller {
  StudiekortController(super.student);

  Future<Kort?> get() async {
    String url = student.buildUrl("digitaltStudiekort.aspx");
    var kortRequest = await request<String>(url);
    return extractCard(BeautifulSoup(kortRequest.data ?? ""));
  }

  Future<DioImage> qr() async {
    DateTime now = DateTime.now();
    String qrUrl = student.buildUrl(
        "GetImage.aspx?studentid=${student.studentId}&type=studiekortqr&time=${now.millisecondsSinceEpoch}");
    return DioImage.string(qrUrl);
  }
}
