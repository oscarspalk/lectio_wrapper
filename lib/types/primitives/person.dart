import 'package:lectio_wrapper/types/message/meta/meta.dart';

class Person extends MetaDataEntry {
  String? initialsOrClass;
  Person(super.name, super.id, {this.initialsOrClass});
}
