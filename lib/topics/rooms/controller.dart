import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/topics/rooms/scraping.dart';
import 'package:lectio_wrapper/topics/weeks/scraping.dart';
import 'package:lectio_wrapper/types/rooms/room.dart';
import 'package:lectio_wrapper/types/weeks/calendar_event.dart';
import 'package:requests/requests.dart';

class RoomsController {
  final Student student;

  RoomsController(this.student);

  Future<List<Room>> list() async {
    var url = student.buildUrl("FindSkema.aspx?type=lokale");
    var req = await Requests.get(url);
    return extractRooms(BeautifulSoup(req.body));
  }

  Future<Week> get(Room room, int year, int weekNum) async {
    var url = student.buildUrl(
        "SkemaNy.aspx?type=lokale&nosubnav=1&id=${room.id}&week=$weekNum$year");
    var req = await Requests.get(url);
    return extractCalendar(BeautifulSoup(req.body), year, weekNum);
  }
}
