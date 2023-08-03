import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio/student.dart';
import 'package:lectio_wrapper/types/class.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

List<ClassRef> extractClasses(BeautifulSoup soup) {
  List<ClassRef> classes = [];
  Bs4Element? classTableParent =
      soup.find('div', id: "m_Content_listecontainer");
  if (classTableParent != null && classTableParent.children.isNotEmpty) {
    Bs4Element table = classTableParent.children.elementAt(0);
    for (var paragraph in table.children) {
      for (var group in paragraph.children) {
        String? href = group.attributes['href'];
        if (/*group.text.contains(RegExp(r'^\d[a-z]*[a-z]')) &&*/ href !=
            null) {
          String classId = queriesFromSoup(href)['klasseid'] ?? "";
          ClassRef classRef = ClassRef(name: group.text, id: classId);
          classes.add(classRef);
        }
      }
    }
  }
  return classes;
}

List<Student> extractStudents(BeautifulSoup soup, int gymId,
    {bool group = false}) {
  Bs4Element? studentTable = soup
      .find('table', id: "s_m_Content_Content_laerereleverpanel_alm_gv")!
      .children
      .elementAt(0);
  // remove first
  List<Bs4Element> studentRows =
      studentTable.children.sublist(1, studentTable.children.length);
  List<Student> students = [];
  int offset = group ? 1 : 0;
  for (var student in studentRows) {
    String? info;
    if (group) {
      info = student.children[2].text.trim();
    }
    Bs4Element imageElement = student.children[0].children[0];
    Bs4Element firstNameElement =
        student.children[2 + offset].children[0].children[0];
    Bs4Element lastNameElement = student.children[3 + offset].children[0];
    String? href = firstNameElement.attributes['href'];
    bool teacher = false;
    String? pictureSrc = imageElement.attributes['src'];
    if (href != null && pictureSrc != null) {
      var querySoup = queriesFromSoup(href);
      String? elevId = querySoup['elevid'];
      String? teacherId = querySoup['laererid'];
      String? id;
      if (elevId != null) {
        id = elevId;
      } else if (teacherId != null) {
        id = teacherId;
        teacher = true;
      }
      String? pictureId;
      if (pictureSrc.contains("default")) {
        pictureId = "https://www.lectio.dk/lectio/img/defaultfoto_large.jpg";
      } else {
        pictureId = queriesFromSoup(pictureSrc)['pictureid'];
      }
      if (id != null && pictureId != null) {
        Student student = Student(id, gymId, info: info, teacher: teacher);
        student.imageId = pictureId;
        student.name = "${firstNameElement.text} ${lastNameElement.text}";
        students.add(student);
      }
    }
  }
  return students;
}
