import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/types/gym.dart';

RegExp gymIdPattern = RegExp(r"\d");

Future<List<Gym>> extractGyms(BeautifulSoup soup) async {
  List<Gym> gyms = [];
  var listElement = soup.find("*", id: "schoolsdiv");
  if (listElement == null) {
    return gyms;
  }
  for (var schoolParent in listElement.children) {
    var linkElement = schoolParent.children[0];
    var href = linkElement.getAttrValue("href");
    var name = linkElement.text;
    var nums = gymIdPattern.allMatches(href ?? "").toList();
    String numBuffer = "";
    for (var n in nums) {
      numBuffer = numBuffer + (href ?? "").substring(n.start, n.end);
    }
    gyms.add(Gym(id: int.parse(numBuffer), name: name));
  }
  return gyms;
}
