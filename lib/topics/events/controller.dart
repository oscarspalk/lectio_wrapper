import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/events/scraping.dart';
import 'package:lectio_wrapper/types/weeks/calendar_event_details.dart';
import 'package:requests/requests.dart';

class EventController {
  final Student student;
  EventController(this.student);

  Future<CalendarEventDetails> expand(CalenderEvent event) async {
    var url =
        student.buildUrl("aktivitet/aktivitetforside2.aspx?absid=${event.id}");
    var response = await Requests.get(url);
    return await extractCalendarEventDetails(BeautifulSoup(response.body));
  }
}
