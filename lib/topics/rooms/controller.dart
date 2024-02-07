import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/topics/rooms/scraping.dart';
import 'package:lectio_wrapper/topics/weeks/scraping.dart';
import 'package:lectio_wrapper/types/rooms/room.dart';
import 'package:lectio_wrapper/types/weeks/calendar_event.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

class RoomsController extends Controller {
  RoomsController(super.student);

  Future<List<Room>> list() async {
    var availabilitiesUrl = student.buildUrl(
        "SkemaAvanceret.aspx?type=aktuelleallelokaler&nosubnav=1&prevurl=FindSkemaAdv.aspx");
    var availabilityReq = await request(availabilitiesUrl);
    var roomAvailabilities =
        extractRoomAvailabilities(BeautifulSoup(availabilityReq.data));

    var roomsUrl = student.buildUrl("FindSkema.aspx?type=lokale");
    var roomsReq = await request(roomsUrl);
    var rooms = extractRooms(BeautifulSoup(roomsReq.data));
    var joinedRooms = rooms.map((room) {
      var roomAvailMatch = roomAvailabilities
          .where((element) => element.name == room.name)
          .firstOrNull;
      if (roomAvailMatch != null) {
        return room.copyWith(inUse: roomAvailMatch.inUse);
      }
      return room;
    }).toList();
    return joinedRooms;
  }

  Future<Week> get(Room room, int year, int weekNum) async {
    var url = student.buildUrl(
        "SkemaNy.aspx?type=lokale&id=${room.id}&week=${intFixed(weekNum, 2)}$year");
    var req = await request(url);
    return extractCalendar(BeautifulSoup(req.data), year, weekNum);
  }
}
