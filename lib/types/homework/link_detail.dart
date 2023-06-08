import 'package:lectio_wrapper/types/homework/detail.dart';

class LinkDetail extends Detail {
  String href;
  String text;
  LinkDetail(this.href, this.text);
  @override
  String show() {
    return text;
  }
}
