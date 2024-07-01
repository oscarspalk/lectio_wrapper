import 'package:lectio_wrapper/types/grades/exam_entry.dart';

class ExamProof {
  final List<ExamEntry> entries;

  ExamProof({required this.entries});

  double calculateAverage() {
    double sum = 0.0;
    double weights = 0.0;
    for (var entry in entries) {
      if (entry.examGrade != null) {
        var grade = entry.examGrade!.grade;
        sum += grade.weight * grade.grade;
        weights += grade.weight;
      }
      if (entry.yearGrade != null) {
        var grade = entry.yearGrade!.grade;
        sum += grade.weight * grade.grade;
        weights += grade.weight;
      }
    }
    return sum / weights;
  }
}
