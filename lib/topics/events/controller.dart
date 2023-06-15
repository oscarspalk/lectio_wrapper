import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/events/private/controller.dart';
import 'package:lectio_wrapper/topics/events/scraping.dart';
import 'package:lectio_wrapper/types/events/calendar_event_details.dart';
import 'package:lectio_wrapper/types/weeks/calendar_event.dart';
import 'package:requests/requests.dart';

class EventController {
  final Student student;
  PrivateCalendarEventController private;
  EventController(this.student)
      : private = PrivateCalendarEventController(student);

  Future<CalendarEventDetails> expand(CalendarEvent event) async {
    String url;
    if (event.type == CalendarEventType.test) {
      url = student
          .buildUrl("proevehold.aspx?type=proevehold&ProeveholdId=${event.id}");
    } else {
      url = student
          .buildUrl("aktivitet/aktivitetforside2.aspx?absid=${event.id}");
    }
    var response = await Requests.get(url);
    return await extractCalendarEventDetails(
        BeautifulSoup(response.body), student);
  }
}
