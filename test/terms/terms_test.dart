import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';

void main() {
  var env = DotEnv()..load();

  Account account = Account(
    int.parse(env['GYM_ID']!),
    env['USERNAME']!,
    env['PASSWORD']!,
    loginError: () async {
      return Account(
          int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
    },
  );
  Student? student;
  setUp(() async {
    student = await account.loginWithCookies([], "54299107744");
  });

  test('list terms', () async {
    var terms = await student!.terms.list();
    expect(terms, isNotEmpty);
    var nonActive = terms.where((element) => !element.active);
    if (nonActive.isNotEmpty) {
      await student!.terms.set(nonActive.elementAt(0));
      var newTerms = await student!.terms.list();
      var termWhere = newTerms
          .where((element) => element.name == nonActive.elementAt(0).name);
      expect(termWhere.first.active, true);
    }
  });
}
