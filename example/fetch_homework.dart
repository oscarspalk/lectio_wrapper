import 'package:lectio_wrapper/lectio_wrapper.dart';

void main() async {
  Account account = Account(
      0 /* yours schools id */, "" /* your username */, "" /* your password */);
  Student? student = await account.login();
  var homework = await student!.homework.list();
  print(homework);
}
