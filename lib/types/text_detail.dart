import 'package:lectio_wrapper/types/detail.dart';

class TextDetail extends Detail {
  String text;
  TextDetail(this.text);
  @override
  String show() {
    return text;
  }
}
