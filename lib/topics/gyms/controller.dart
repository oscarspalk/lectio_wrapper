import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/topics/gyms/scraping.dart';
import 'package:lectio_wrapper/types/gym.dart';
import 'package:requests/requests.dart';

class GymController {
  Future<List<Gym>> list() async {
    String gymsListUrl =
        "https://www.lectio.dk/lectio/login_list.aspx?showall=1";
    var response = await Requests.get(gymsListUrl);
    return await extractGyms(BeautifulSoup(response.body));
  }
}
