import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/types/rooms/room.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

List<Room> extractRooms(BeautifulSoup soup) {
  List<Room> rooms = [];
  Bs4Element? table = soup.find('*', id: 'm_Content_listecontainer');
  if (table != null) {
    var children = table.children[0].children.sublist(1);
    for (var row in children) {
      rooms.add(_extractRoom(row));
    }
  }
  return rooms;
}

Room _extractRoom(Bs4Element row) {
  var element = row.children[0];
  var short = element.children[0].text;
  var name = element.text.replaceFirst(short, '').trim();
  var id = queriesFromSoup(element.getAttrValue('href')!)['id']!;
  return Room(id, short, name);
}
