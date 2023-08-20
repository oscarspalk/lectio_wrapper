import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/topics/homework/scraping.dart';
import 'package:lectio_wrapper/types/homework/homework.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

class HomeworkController {
  final Student student;
  const HomeworkController(this.student);

  Future<List<Homework>> list() async {
    var url = student
        .buildUrl("material_lektieoversigt.aspx?elevid=${student.studentId}");
    var response = await request(url);
    return await extractHomework(BeautifulSoup(response.data));
  }
}
