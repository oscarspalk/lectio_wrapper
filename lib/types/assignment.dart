// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Assignment {
  int week;
  String team;
  String title;
  DateTime deadline;
  double studentTime;
  String status;
  String absence;
  String taskNote;
  String taskLink;
  Assignment(
      {required this.week,
      required this.team,
      required this.title,
      required this.deadline,
      required this.studentTime,
      required this.status,
      required this.absence,
      required this.taskNote,
      required this.taskLink});

  Assignment copyWith({
    int? week,
    String? team,
    String? title,
    DateTime? deadline,
    double? studentTime,
    String? status,
    String? absence,
    String? taskNote,
    String? taskLink,
  }) {
    return Assignment(
        week: week ?? this.week,
        team: team ?? this.team,
        title: title ?? this.title,
        deadline: deadline ?? this.deadline,
        studentTime: studentTime ?? this.studentTime,
        status: status ?? this.status,
        absence: absence ?? this.absence,
        taskNote: taskNote ?? this.taskNote,
        taskLink: taskLink ?? this.taskLink);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'week': week,
      'team': team,
      'title': title,
      'deadline': deadline.millisecondsSinceEpoch,
      'studentTime': studentTime,
      'status': status,
      'absence': absence,
      'taskNote': taskNote,
      'taskLink': taskLink,
    };
  }

  factory Assignment.fromMap(Map<String, dynamic> map) {
    return Assignment(
      week: map['week'] as int,
      team: map['team'] as String,
      title: map['title'] as String,
      deadline: DateTime.fromMillisecondsSinceEpoch(map['deadline'] as int),
      studentTime: map['studentTime'] as double,
      status: map['status'] as String,
      absence: map['absence'] as String,
      taskNote: map['taskNote'] as String,
      taskLink: map['taskLink'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Assignment.fromJson(String source) =>
      Assignment.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Assignment(week: $week, team: $team, title: $title, deadline: $deadline, studentTime: $studentTime, status: $status, absence: $absence, taskNote: $taskNote)';
  }

  @override
  bool operator ==(covariant Assignment other) {
    if (identical(this, other)) return true;

    return other.week == week &&
        other.team == team &&
        other.title == title &&
        other.deadline == deadline &&
        other.studentTime == studentTime &&
        other.status == status &&
        other.absence == absence &&
        other.taskNote == taskNote &&
        other.taskLink == taskLink;
  }

  @override
  int get hashCode {
    return week.hashCode ^
        team.hashCode ^
        title.hashCode ^
        deadline.hashCode ^
        studentTime.hashCode ^
        status.hashCode ^
        absence.hashCode ^
        taskNote.hashCode ^
        taskLink.hashCode;
  }
}
