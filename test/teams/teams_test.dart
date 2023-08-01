import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  setUp(() async => {student = await account.login(autologin: false)});

  test('list teams', () async {
    var teams = await student!.teams.list();
    expect(teams, isNotEmpty);
  });

  test('get team stats', () async {
    var teams = await student!.teams.list();
    List<ModuleStatistics> statsList = [];
    for (var team in teams) {
      var stats = await student!.teams.get(team);

      expect(stats, isNotNull);
      statsList.add(stats!);
    }
    expect(statsList, isNotEmpty);
  });
}
