import 'dart:convert';

import 'package:lectio_wrapper/types/message/meta/meta.dart';
import 'package:lectio_wrapper/types/primitives/file.dart';
import 'package:lectio_wrapper/types/primitives/team.dart';

class Assignment {
  List<File> testFiles;
  String id;
  String title;
  String note;
  Team team;
  String grading;
  MetaDataEntry responsible;
  double hours;
  DateTime deadline;
  List<AssignmentEntry> entries;
  Assignment(
      this.id,
      this.title,
      this.note,
      this.team,
      this.grading,
      this.responsible,
      this.hours,
      this.deadline,
      this.entries,
      this.testFiles);
}

class AssignmentEntry {
  DateTime time;
  MetaDataEntry user;
  String note;
  File resource;
  AssignmentEntry(this.time, this.user, this.note, this.resource);
}

class AssignmentRef {
  int week;
  String team;
  String title;
  DateTime deadline;
  double studentTime;
  String status;
  String absence;
  String taskNote;
  String id;
  AssignmentRef(
      {required this.week,
      required this.team,
      required this.title,
      required this.deadline,
      required this.studentTime,
      required this.status,
      required this.absence,
      required this.taskNote,
      required this.id});

  AssignmentRef copyWith({
    int? week,
    String? team,
    String? title,
    DateTime? deadline,
    double? studentTime,
    String? status,
    String? absence,
    String? taskNote,
    String? id,
  }) {
    return AssignmentRef(
        week: week ?? this.week,
        team: team ?? this.team,
        title: title ?? this.title,
        deadline: deadline ?? this.deadline,
        studentTime: studentTime ?? this.studentTime,
        status: status ?? this.status,
        absence: absence ?? this.absence,
        taskNote: taskNote ?? this.taskNote,
        id: id ?? this.id);
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
      'id': id,
    };
  }

  factory AssignmentRef.fromMap(Map<String, dynamic> map) {
    return AssignmentRef(
      week: map['week'] as int,
      team: map['team'] as String,
      title: map['title'] as String,
      deadline: DateTime.fromMillisecondsSinceEpoch(map['deadline'] as int),
      studentTime: map['studentTime'] as double,
      status: map['status'] as String,
      absence: map['absence'] as String,
      taskNote: map['taskNote'] as String,
      id: map['id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AssignmentRef.fromJson(String source) =>
      AssignmentRef.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Assignment(week: $week, team: $team, title: $title, deadline: $deadline, studentTime: $studentTime, status: $status, absence: $absence, taskNote: $taskNote)';
  }

  @override
  bool operator ==(covariant AssignmentRef other) {
    if (identical(this, other)) return true;

    return other.week == week &&
        other.team == team &&
        other.title == title &&
        other.deadline == deadline &&
        other.studentTime == studentTime &&
        other.status == status &&
        other.absence == absence &&
        other.taskNote == taskNote &&
        other.id == id;
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
        id.hashCode;
  }
}
