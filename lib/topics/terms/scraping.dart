import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/types/terms/term.dart';

List<Term> extractTerms(BeautifulSoup soup) {
  List<Term> terms = [];
  var termSelect = soup.find('*', id: 's_m_ChooseTerm_term');
  if (termSelect != null) {
    var options = termSelect.findAll('option');
    for (var option in options) {
      var selected = option.getAttrValue('selected') != null;
      var value = int.parse(option.getAttrValue('value')!);
      var text = option.text;
      terms.add(Term(value, text, selected));
    }
  }
  return terms;
}
