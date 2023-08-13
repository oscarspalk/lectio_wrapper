import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/utils/dating.dart';

void main() {
  test('test week from date function', () async {
    var firstMonday = DateTime(2023, 1, 2);
    List<DateTime> days = [
      for (int i = 0; i < 52; i++)
        for (int j = 0; j < 7; j++) firstMonday.add(Duration(days: j + i * 7))
    ];
    for (int i = 0; i < 52; i++) {
      var takenDays = days.take(7).toList();
      days.removeRange(0, 7);
      for (var day in takenDays) {
        expect(weekFromDateTime(day), i + 1);
      }
    }
  });
}
