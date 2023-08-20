import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/topics/events/private/controller.dart';
import 'package:lectio_wrapper/topics/events/scraping.dart';
import 'package:lectio_wrapper/types/events/calendar_event_details.dart';
import 'package:lectio_wrapper/types/weeks/calendar_event.dart';
import 'package:lectio_wrapper/utils/dio_client.dart';

class EventController {
  final Student student;
  PrivateCalendarEventController private;
  EventController(this.student)
      : private = PrivateCalendarEventController(student);

  Future<CalendarEventDetails> expand(CalendarEvent event) async {
    String url;
    switch (event.type) {
      case CalendarEventType.test:
        url = student.buildUrl(
            "proevehold.aspx?type=proevehold&ProeveholdId=${event.id}");
        break;
      case CalendarEventType.regular:
        url = student
            .buildUrl("aktivitet/aktivitetforside2.aspx?absid=${event.id}");
        break;
      case CalendarEventType.private:
        url = student.buildUrl("privat_aftale.aspx?aftaleid=${event.id}");
    }
    var response = await request(url);
    return await extractCalendarEventDetails(
        BeautifulSoup(response.data), student, event);
  }
}
