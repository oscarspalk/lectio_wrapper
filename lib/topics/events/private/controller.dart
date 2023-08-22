import 'package:intl/intl.dart';
import 'package:lectio_wrapper/types/weeks/calendar_event.dart';
import 'package:lectio_wrapper/utils/controller.dart';
import 'package:lectio_wrapper/utils/scraping.dart';

DateFormat dateFormat = DateFormat("dd/MM-yyyy");
DateFormat timeFormat = DateFormat("HH:mm");

class PrivateCalendarEventController extends Controller {
  PrivateCalendarEventController(super.student);

  Future<void> update(CalendarEvent event) async {
    String target = r"m$Content$savebuttonsCtrl$svbtn";
    String url = student.buildUrl("privat_aftale.aspx?aftaleid=${event.id}");
    await postLoggedInPageSoup(url, target, {
      r"m$Content$titelTextBox$tb": event.title,
      r"m$Content$startdateCtrl$_date$tb": dateFormat.format(event.start),
      r"m$Content$startdateCtrl$startdateCtrl_time$tb":
          timeFormat.format(event.start),
      r"m$Content$enddateCtrl$_date$tb": dateFormat.format(event.end),
      r"m$Content$enddateCtrl$enddateCtrl_time$tb":
          timeFormat.format(event.end),
      r"m$Content$commentTextBox$tb": event.note
    });
  }

  Future<void> create(CalendarEvent event) async {
    String target = r"m$Content$savebuttonsCtrl$svbtn";
    String url = student.buildUrl("privat_aftale.aspx");
    await postLoggedInPageSoup(url, target, {
      r"m$Content$titelTextBox$tb": event.title,
      r"m$Content$startdateCtrl$_date$tb": dateFormat.format(event.start),
      r"m$Content$startdateCtrl$startdateCtrl_time$tb":
          timeFormat.format(event.start),
      r"m$Content$enddateCtrl$_date$tb": dateFormat.format(event.end),
      r"m$Content$enddateCtrl$enddateCtrl_time$tb":
          timeFormat.format(event.end),
      r"m$Content$commentTextBox$tb": event.note
    });
  }

  Future<void> delete(CalendarEvent event) async {
    String target = r"m$Content$savebuttonsCtrl$db";
    String url = student.buildUrl("privat_aftale.aspx?aftaleid=${event.id}");
    await postLoggedInPageSoup(url, target, {
      r"__EVENTARGUMENT": "Delete",
    });
  }
}
