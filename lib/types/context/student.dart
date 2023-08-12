import 'package:lectio_wrapper/types/context/context.dart';

class StudentContext extends Context {
  String name;
  String imageId;
  StudentContext(this.imageId, super.id, this.name);
}
