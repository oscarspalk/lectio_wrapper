import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/types/plan/study_plan.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  setUp(() async => {student = await account.login()});

  test('list plans', () async {
    var plans = await student!.plans.list();
    expect(plans, anyOf(isNotEmpty, isEmpty));
  });

  test('get plan', () async {
    var plan = await student!.plans
        .get(StudyPlanRef('', DateTime.now(), DateTime.now(), '59876844470'));
    expect(plan, isNotNull);
  });
}
