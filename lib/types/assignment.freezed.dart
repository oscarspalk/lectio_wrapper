// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assignment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Assignment {
  List<File> get testFiles => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  Team get team => throw _privateConstructorUsedError;
  String get grading => throw _privateConstructorUsedError;
  MetaDataEntry get responsible => throw _privateConstructorUsedError;
  double get hours => throw _privateConstructorUsedError;
  DateTime get deadline => throw _privateConstructorUsedError;
  List<AssignmentEntry> get entries => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AssignmentCopyWith<Assignment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentCopyWith<$Res> {
  factory $AssignmentCopyWith(
          Assignment value, $Res Function(Assignment) then) =
      _$AssignmentCopyWithImpl<$Res, Assignment>;
  @useResult
  $Res call(
      {List<File> testFiles,
      String id,
      String title,
      String note,
      Team team,
      String grading,
      MetaDataEntry responsible,
      double hours,
      DateTime deadline,
      List<AssignmentEntry> entries});

  $TeamCopyWith<$Res> get team;
  $MetaDataEntryCopyWith<$Res> get responsible;
}

/// @nodoc
class _$AssignmentCopyWithImpl<$Res, $Val extends Assignment>
    implements $AssignmentCopyWith<$Res> {
  _$AssignmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testFiles = null,
    Object? id = null,
    Object? title = null,
    Object? note = null,
    Object? team = null,
    Object? grading = null,
    Object? responsible = null,
    Object? hours = null,
    Object? deadline = null,
    Object? entries = null,
  }) {
    return _then(_value.copyWith(
      testFiles: null == testFiles
          ? _value.testFiles
          : testFiles // ignore: cast_nullable_to_non_nullable
              as List<File>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      grading: null == grading
          ? _value.grading
          : grading // ignore: cast_nullable_to_non_nullable
              as String,
      responsible: null == responsible
          ? _value.responsible
          : responsible // ignore: cast_nullable_to_non_nullable
              as MetaDataEntry,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as double,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      entries: null == entries
          ? _value.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<AssignmentEntry>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get team {
    return $TeamCopyWith<$Res>(_value.team, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDataEntryCopyWith<$Res> get responsible {
    return $MetaDataEntryCopyWith<$Res>(_value.responsible, (value) {
      return _then(_value.copyWith(responsible: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AssignmentImplCopyWith<$Res>
    implements $AssignmentCopyWith<$Res> {
  factory _$$AssignmentImplCopyWith(
          _$AssignmentImpl value, $Res Function(_$AssignmentImpl) then) =
      __$$AssignmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<File> testFiles,
      String id,
      String title,
      String note,
      Team team,
      String grading,
      MetaDataEntry responsible,
      double hours,
      DateTime deadline,
      List<AssignmentEntry> entries});

  @override
  $TeamCopyWith<$Res> get team;
  @override
  $MetaDataEntryCopyWith<$Res> get responsible;
}

/// @nodoc
class __$$AssignmentImplCopyWithImpl<$Res>
    extends _$AssignmentCopyWithImpl<$Res, _$AssignmentImpl>
    implements _$$AssignmentImplCopyWith<$Res> {
  __$$AssignmentImplCopyWithImpl(
      _$AssignmentImpl _value, $Res Function(_$AssignmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testFiles = null,
    Object? id = null,
    Object? title = null,
    Object? note = null,
    Object? team = null,
    Object? grading = null,
    Object? responsible = null,
    Object? hours = null,
    Object? deadline = null,
    Object? entries = null,
  }) {
    return _then(_$AssignmentImpl(
      testFiles: null == testFiles
          ? _value._testFiles
          : testFiles // ignore: cast_nullable_to_non_nullable
              as List<File>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      grading: null == grading
          ? _value.grading
          : grading // ignore: cast_nullable_to_non_nullable
              as String,
      responsible: null == responsible
          ? _value.responsible
          : responsible // ignore: cast_nullable_to_non_nullable
              as MetaDataEntry,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as double,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      entries: null == entries
          ? _value._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<AssignmentEntry>,
    ));
  }
}

/// @nodoc

class _$AssignmentImpl implements _Assignment {
  _$AssignmentImpl(
      {required final List<File> testFiles,
      required this.id,
      required this.title,
      required this.note,
      required this.team,
      required this.grading,
      required this.responsible,
      required this.hours,
      required this.deadline,
      required final List<AssignmentEntry> entries})
      : _testFiles = testFiles,
        _entries = entries;

  final List<File> _testFiles;
  @override
  List<File> get testFiles {
    if (_testFiles is EqualUnmodifiableListView) return _testFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_testFiles);
  }

  @override
  final String id;
  @override
  final String title;
  @override
  final String note;
  @override
  final Team team;
  @override
  final String grading;
  @override
  final MetaDataEntry responsible;
  @override
  final double hours;
  @override
  final DateTime deadline;
  final List<AssignmentEntry> _entries;
  @override
  List<AssignmentEntry> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  @override
  String toString() {
    return 'Assignment(testFiles: $testFiles, id: $id, title: $title, note: $note, team: $team, grading: $grading, responsible: $responsible, hours: $hours, deadline: $deadline, entries: $entries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignmentImpl &&
            const DeepCollectionEquality()
                .equals(other._testFiles, _testFiles) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.grading, grading) || other.grading == grading) &&
            (identical(other.responsible, responsible) ||
                other.responsible == responsible) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            const DeepCollectionEquality().equals(other._entries, _entries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_testFiles),
      id,
      title,
      note,
      team,
      grading,
      responsible,
      hours,
      deadline,
      const DeepCollectionEquality().hash(_entries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignmentImplCopyWith<_$AssignmentImpl> get copyWith =>
      __$$AssignmentImplCopyWithImpl<_$AssignmentImpl>(this, _$identity);
}

abstract class _Assignment implements Assignment {
  factory _Assignment(
      {required final List<File> testFiles,
      required final String id,
      required final String title,
      required final String note,
      required final Team team,
      required final String grading,
      required final MetaDataEntry responsible,
      required final double hours,
      required final DateTime deadline,
      required final List<AssignmentEntry> entries}) = _$AssignmentImpl;

  @override
  List<File> get testFiles;
  @override
  String get id;
  @override
  String get title;
  @override
  String get note;
  @override
  Team get team;
  @override
  String get grading;
  @override
  MetaDataEntry get responsible;
  @override
  double get hours;
  @override
  DateTime get deadline;
  @override
  List<AssignmentEntry> get entries;
  @override
  @JsonKey(ignore: true)
  _$$AssignmentImplCopyWith<_$AssignmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AssignmentEntry {
  DateTime get time => throw _privateConstructorUsedError;
  MetaDataEntry get user => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  File get resource => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AssignmentEntryCopyWith<AssignmentEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentEntryCopyWith<$Res> {
  factory $AssignmentEntryCopyWith(
          AssignmentEntry value, $Res Function(AssignmentEntry) then) =
      _$AssignmentEntryCopyWithImpl<$Res, AssignmentEntry>;
  @useResult
  $Res call({DateTime time, MetaDataEntry user, String note, File resource});

  $MetaDataEntryCopyWith<$Res> get user;
  $FileCopyWith<$Res> get resource;
}

/// @nodoc
class _$AssignmentEntryCopyWithImpl<$Res, $Val extends AssignmentEntry>
    implements $AssignmentEntryCopyWith<$Res> {
  _$AssignmentEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? user = null,
    Object? note = null,
    Object? resource = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MetaDataEntry,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      resource: null == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as File,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDataEntryCopyWith<$Res> get user {
    return $MetaDataEntryCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FileCopyWith<$Res> get resource {
    return $FileCopyWith<$Res>(_value.resource, (value) {
      return _then(_value.copyWith(resource: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AssignmentEntryImplCopyWith<$Res>
    implements $AssignmentEntryCopyWith<$Res> {
  factory _$$AssignmentEntryImplCopyWith(_$AssignmentEntryImpl value,
          $Res Function(_$AssignmentEntryImpl) then) =
      __$$AssignmentEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime time, MetaDataEntry user, String note, File resource});

  @override
  $MetaDataEntryCopyWith<$Res> get user;
  @override
  $FileCopyWith<$Res> get resource;
}

/// @nodoc
class __$$AssignmentEntryImplCopyWithImpl<$Res>
    extends _$AssignmentEntryCopyWithImpl<$Res, _$AssignmentEntryImpl>
    implements _$$AssignmentEntryImplCopyWith<$Res> {
  __$$AssignmentEntryImplCopyWithImpl(
      _$AssignmentEntryImpl _value, $Res Function(_$AssignmentEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? user = null,
    Object? note = null,
    Object? resource = null,
  }) {
    return _then(_$AssignmentEntryImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MetaDataEntry,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      resource: null == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$AssignmentEntryImpl implements _AssignmentEntry {
  _$AssignmentEntryImpl(
      {required this.time,
      required this.user,
      required this.note,
      required this.resource});

  @override
  final DateTime time;
  @override
  final MetaDataEntry user;
  @override
  final String note;
  @override
  final File resource;

  @override
  String toString() {
    return 'AssignmentEntry(time: $time, user: $user, note: $note, resource: $resource)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignmentEntryImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.resource, resource) ||
                other.resource == resource));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time, user, note, resource);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignmentEntryImplCopyWith<_$AssignmentEntryImpl> get copyWith =>
      __$$AssignmentEntryImplCopyWithImpl<_$AssignmentEntryImpl>(
          this, _$identity);
}

abstract class _AssignmentEntry implements AssignmentEntry {
  factory _AssignmentEntry(
      {required final DateTime time,
      required final MetaDataEntry user,
      required final String note,
      required final File resource}) = _$AssignmentEntryImpl;

  @override
  DateTime get time;
  @override
  MetaDataEntry get user;
  @override
  String get note;
  @override
  File get resource;
  @override
  @JsonKey(ignore: true)
  _$$AssignmentEntryImplCopyWith<_$AssignmentEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AssignmentRef {
  int get week => throw _privateConstructorUsedError;
  String get team => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get deadline => throw _privateConstructorUsedError;
  double get studentTime => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get absence => throw _privateConstructorUsedError;
  String get taskNote => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AssignmentRefCopyWith<AssignmentRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentRefCopyWith<$Res> {
  factory $AssignmentRefCopyWith(
          AssignmentRef value, $Res Function(AssignmentRef) then) =
      _$AssignmentRefCopyWithImpl<$Res, AssignmentRef>;
  @useResult
  $Res call(
      {int week,
      String team,
      String title,
      DateTime deadline,
      double studentTime,
      String status,
      String absence,
      String taskNote,
      String id});
}

/// @nodoc
class _$AssignmentRefCopyWithImpl<$Res, $Val extends AssignmentRef>
    implements $AssignmentRefCopyWith<$Res> {
  _$AssignmentRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? week = null,
    Object? team = null,
    Object? title = null,
    Object? deadline = null,
    Object? studentTime = null,
    Object? status = null,
    Object? absence = null,
    Object? taskNote = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      studentTime: null == studentTime
          ? _value.studentTime
          : studentTime // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      absence: null == absence
          ? _value.absence
          : absence // ignore: cast_nullable_to_non_nullable
              as String,
      taskNote: null == taskNote
          ? _value.taskNote
          : taskNote // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssignmentRefImplCopyWith<$Res>
    implements $AssignmentRefCopyWith<$Res> {
  factory _$$AssignmentRefImplCopyWith(
          _$AssignmentRefImpl value, $Res Function(_$AssignmentRefImpl) then) =
      __$$AssignmentRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int week,
      String team,
      String title,
      DateTime deadline,
      double studentTime,
      String status,
      String absence,
      String taskNote,
      String id});
}

/// @nodoc
class __$$AssignmentRefImplCopyWithImpl<$Res>
    extends _$AssignmentRefCopyWithImpl<$Res, _$AssignmentRefImpl>
    implements _$$AssignmentRefImplCopyWith<$Res> {
  __$$AssignmentRefImplCopyWithImpl(
      _$AssignmentRefImpl _value, $Res Function(_$AssignmentRefImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? week = null,
    Object? team = null,
    Object? title = null,
    Object? deadline = null,
    Object? studentTime = null,
    Object? status = null,
    Object? absence = null,
    Object? taskNote = null,
    Object? id = null,
  }) {
    return _then(_$AssignmentRefImpl(
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      studentTime: null == studentTime
          ? _value.studentTime
          : studentTime // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      absence: null == absence
          ? _value.absence
          : absence // ignore: cast_nullable_to_non_nullable
              as String,
      taskNote: null == taskNote
          ? _value.taskNote
          : taskNote // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssignmentRefImpl implements _AssignmentRef {
  _$AssignmentRefImpl(
      {required this.week,
      required this.team,
      required this.title,
      required this.deadline,
      required this.studentTime,
      required this.status,
      required this.absence,
      required this.taskNote,
      required this.id});

  @override
  final int week;
  @override
  final String team;
  @override
  final String title;
  @override
  final DateTime deadline;
  @override
  final double studentTime;
  @override
  final String status;
  @override
  final String absence;
  @override
  final String taskNote;
  @override
  final String id;

  @override
  String toString() {
    return 'AssignmentRef(week: $week, team: $team, title: $title, deadline: $deadline, studentTime: $studentTime, status: $status, absence: $absence, taskNote: $taskNote, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignmentRefImpl &&
            (identical(other.week, week) || other.week == week) &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.studentTime, studentTime) ||
                other.studentTime == studentTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.absence, absence) || other.absence == absence) &&
            (identical(other.taskNote, taskNote) ||
                other.taskNote == taskNote) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, week, team, title, deadline,
      studentTime, status, absence, taskNote, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignmentRefImplCopyWith<_$AssignmentRefImpl> get copyWith =>
      __$$AssignmentRefImplCopyWithImpl<_$AssignmentRefImpl>(this, _$identity);
}

abstract class _AssignmentRef implements AssignmentRef {
  factory _AssignmentRef(
      {required final int week,
      required final String team,
      required final String title,
      required final DateTime deadline,
      required final double studentTime,
      required final String status,
      required final String absence,
      required final String taskNote,
      required final String id}) = _$AssignmentRefImpl;

  @override
  int get week;
  @override
  String get team;
  @override
  String get title;
  @override
  DateTime get deadline;
  @override
  double get studentTime;
  @override
  String get status;
  @override
  String get absence;
  @override
  String get taskNote;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$AssignmentRefImplCopyWith<_$AssignmentRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
