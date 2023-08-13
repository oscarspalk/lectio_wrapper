import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/utils/dating.dart';

void main() {
  test('test week from date function', () async {
    var tommorow = DateTime(2023, 8, 21);
    List<DateTime> week33Days = [
      for (int i = 0; i < 7; i++) tommorow.add(Duration(days: i))
    ];
    List<int> weekNumsForDays =
        week33Days.map((e) => weekFromDateTime(e)).toList();
    for (var day in week33Days) {
      expect(weekFromDateTime(day), 34);
    }
  });
}
