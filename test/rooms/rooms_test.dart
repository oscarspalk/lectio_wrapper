import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/types/rooms/room.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  setUp(() async => {student = await account.login(autologin: false)});
  test('list rooms', () async {
    var rooms = await student?.rooms.list();
    expect(rooms, isNotEmpty);
  });

  test('get room', () async {
    var room = await student!.rooms.get(
        Room(id: '4842722415', short: '', name: '', inUse: false), 2024, 6);
    expect(room, isNotNull);
  });
}
