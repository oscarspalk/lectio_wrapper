import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/types/rooms/room.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

List<RoomAvailability> extractRoomAvailabilities(BeautifulSoup soup) {
  List<RoomAvailability> rooms = [];
  Bs4Element? table = soup.find('*', id: 'm_Content_LectioDetailIsland1_pa');
  if (table != null) {
    var children = table.children
        .where((element) => element.id.startsWith("printSingleControl"));
    for (var row in children) {
      var extractedRoom = _extractRoomAvailability(row);
      if (extractedRoom != null) {
        rooms.add(extractedRoom);
      }
    }
  }
  return rooms;
}

RoomAvailability? _extractRoomAvailability(Bs4Element row) {
  var headerElement = row.find("h2");
  if (headerElement != null) {
    int dashIndex = headerElement.text.indexOf('-');
    if (dashIndex == -1) {
      return null;
    }
    var short = headerElement.text.substring(0, dashIndex).trim();
    var name = headerElement.text.substring(dashIndex + 1).trim();
    var bookingElement = row.find('table');
    if (bookingElement != null) {
      var notUsed = bookingElement.text.contains("Der er ingen data");
      return RoomAvailability(short: short, name: name, inUse: !notUsed);
    }
  }
  return null;
}

List<Room> extractRooms(BeautifulSoup soup) {
  List<Room> rooms = [];
  Bs4Element? table = soup.find('*', id: 'm_Content_listecontainer');
  if (table != null) {
    var children = table.children[0].children.sublist(1);
    for (var row in children) {
      var extractedRoom = _extractRoom(row);
      if (extractedRoom != null) {
        rooms.add(extractedRoom);
      }
    }
  }
  return rooms;
}

Room? _extractRoom(Bs4Element row) {
  var element = row.children[0];
  var short = element.children[0].text;
  var name = element.text.replaceFirst(short, '').trim();
  var id = queriesFromSoup(element.getAttrValue('href'))['id'];
  if (id != null) {
    return Room(id: id, short: short, name: name, inUse: false);
  }
  return null;
}
