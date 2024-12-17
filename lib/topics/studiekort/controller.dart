import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/topics/studiekort/scraping.dart';
import 'package:lectio_wrapper/types/studiekort/kort.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';
import 'package:lectio_wrapper/utils/dio_image_provider.dart';

class StudiekortController extends Controller {
  StudiekortController(super.student);

  Future<Kort?> get() async {
    if (student.demo) {
      return Kort(
          gymnasium: "Egaa Gymnasium",
          name: "Oscar Gaardsted Spalk",
          birthday: DateTime(2006, 11, 13),
          picture: DioImage.string(
              "https://m.media-amazon.com/images/I/71fhxKX4PkL._AC_UF1000,1000_QL80_.jpg"));
    }
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
