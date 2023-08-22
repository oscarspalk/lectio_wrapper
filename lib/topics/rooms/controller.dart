import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/topics/rooms/scraping.dart';
import 'package:lectio_wrapper/topics/weeks/scraping.dart';
import 'package:lectio_wrapper/types/rooms/room.dart';
import 'package:lectio_wrapper/types/weeks/calendar_event.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

class RoomsController extends Controller {
  RoomsController(super.student);

  Future<List<Room>> list() async {
    var url = student.buildUrl("FindSkema.aspx?type=lokale");
    var req = await request(url);
    return extractRooms(BeautifulSoup(req.data));
  }

  Future<Week> get(Room room, int year, int weekNum) async {
    var url = student.buildUrl(
        "SkemaNy.aspx?type=lokale&nosubnav=1&id=${room.id}&week=$weekNum$year");
    var req = await request(url);
    return extractCalendar(BeautifulSoup(req.data), year, weekNum);
  }
}
