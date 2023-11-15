import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:intl/intl.dart';
import 'package:lectio_wrapper/types/studiekort/kort.dart';
import 'package:lectio_wrapper/utils/dio_image_provider.dart';

Kort? extractCard(BeautifulSoup soup) {
  var schoolField = soup.find('*', id: 's_m_Content_Content_SchoolName');
  var nameField = soup.find('*', id: 's_m_Content_Content_StudentName');
  var birthdayField = soup.find('*', id: 's_m_Content_Content_StudentBirthday');
  var pictureField = soup.find('*', id: 's_m_Content_Content_StudPic');
  String? schoolName = schoolField?.text;
  String? name = nameField?.text;
  String? birthdayText = birthdayField?.text;
  String? pictureUrl = pictureField?.getAttrValue("src");
  if (schoolName != null &&
      name != null &&
      birthdayText != null &&
      pictureUrl != null) {
    String? birthdayDate = birthdayText
        .substring(birthdayText.indexOf(':') + 1, birthdayText.indexOf('('))
        .trim();
    DateTime? birthday = DateFormat("dd/MM-yyyy").parse(birthdayDate);
    DioImage picture = DioImage.string("https://www.lectio.dk$pictureUrl");
    return Kort(
        gymnasium: schoolName,
        name: name,
        birthday: birthday,
        picture: picture);
  }
  return null;
}
