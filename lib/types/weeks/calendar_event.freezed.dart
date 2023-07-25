// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Week _$WeekFromJson(Map<String, dynamic> json) {
  return _Week.fromJson(json);
}

/// @nodoc
mixin _$Week {
  List<Day> get days => throw _privateConstructorUsedError;
  int get weekNum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekCopyWith<Week> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekCopyWith<$Res> {
  factory $WeekCopyWith(Week value, $Res Function(Week) then) =
      _$WeekCopyWithImpl<$Res, Week>;
  @useResult
  $Res call({List<Day> days, int weekNum});
}

/// @nodoc
class _$WeekCopyWithImpl<$Res, $Val extends Week>
    implements $WeekCopyWith<$Res> {
  _$WeekCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? weekNum = null,
  }) {
    return _then(_value.copyWith(
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<Day>,
      weekNum: null == weekNum
          ? _value.weekNum
          : weekNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeekCopyWith<$Res> implements $WeekCopyWith<$Res> {
  factory _$$_WeekCopyWith(_$_Week value, $Res Function(_$_Week) then) =
      __$$_WeekCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Day> days, int weekNum});
}

/// @nodoc
class __$$_WeekCopyWithImpl<$Res> extends _$WeekCopyWithImpl<$Res, _$_Week>
    implements _$$_WeekCopyWith<$Res> {
  __$$_WeekCopyWithImpl(_$_Week _value, $Res Function(_$_Week) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? weekNum = null,
  }) {
    return _then(_$_Week(
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<Day>,
      weekNum: null == weekNum
          ? _value.weekNum
          : weekNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Week implements _Week {
  _$_Week({required final List<Day> days, required this.weekNum})
      : _days = days;

  factory _$_Week.fromJson(Map<String, dynamic> json) => _$$_WeekFromJson(json);

  final List<Day> _days;
  @override
  List<Day> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  final int weekNum;

  @override
  String toString() {
    return 'Week(days: $days, weekNum: $weekNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Week &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            (identical(other.weekNum, weekNum) || other.weekNum == weekNum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_days), weekNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeekCopyWith<_$_Week> get copyWith =>
      __$$_WeekCopyWithImpl<_$_Week>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeekToJson(
      this,
    );
  }
}

abstract class _Week implements Week {
  factory _Week({required final List<Day> days, required final int weekNum}) =
      _$_Week;

  factory _Week.fromJson(Map<String, dynamic> json) = _$_Week.fromJson;

  @override
  List<Day> get days;
  @override
  int get weekNum;
  @override
  @JsonKey(ignore: true)
  _$$_WeekCopyWith<_$_Week> get copyWith => throw _privateConstructorUsedError;
}

Day _$DayFromJson(Map<String, dynamic> json) {
  return _Day.fromJson(json);
}

/// @nodoc
mixin _$Day {
  List<String> get informations => throw _privateConstructorUsedError;
  List<CalendarEvent> get events => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayCopyWith<Day> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayCopyWith<$Res> {
  factory $DayCopyWith(Day value, $Res Function(Day) then) =
      _$DayCopyWithImpl<$Res, Day>;
  @useResult
  $Res call(
      {List<String> informations, List<CalendarEvent> events, DateTime date});
}

/// @nodoc
class _$DayCopyWithImpl<$Res, $Val extends Day> implements $DayCopyWith<$Res> {
  _$DayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? informations = null,
    Object? events = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      informations: null == informations
          ? _value.informations
          : informations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<CalendarEvent>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DayCopyWith<$Res> implements $DayCopyWith<$Res> {
  factory _$$_DayCopyWith(_$_Day value, $Res Function(_$_Day) then) =
      __$$_DayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> informations, List<CalendarEvent> events, DateTime date});
}

/// @nodoc
class __$$_DayCopyWithImpl<$Res> extends _$DayCopyWithImpl<$Res, _$_Day>
    implements _$$_DayCopyWith<$Res> {
  __$$_DayCopyWithImpl(_$_Day _value, $Res Function(_$_Day) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? informations = null,
    Object? events = null,
    Object? date = null,
  }) {
    return _then(_$_Day(
      informations: null == informations
          ? _value._informations
          : informations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<CalendarEvent>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Day implements _Day {
  _$_Day(
      {required final List<String> informations,
      required final List<CalendarEvent> events,
      required this.date})
      : _informations = informations,
        _events = events;

  factory _$_Day.fromJson(Map<String, dynamic> json) => _$$_DayFromJson(json);

  final List<String> _informations;
  @override
  List<String> get informations {
    if (_informations is EqualUnmodifiableListView) return _informations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_informations);
  }

  final List<CalendarEvent> _events;
  @override
  List<CalendarEvent> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  final DateTime date;

  @override
  String toString() {
    return 'Day(informations: $informations, events: $events, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Day &&
            const DeepCollectionEquality()
                .equals(other._informations, _informations) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_informations),
      const DeepCollectionEquality().hash(_events),
      date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DayCopyWith<_$_Day> get copyWith =>
      __$$_DayCopyWithImpl<_$_Day>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayToJson(
      this,
    );
  }
}

abstract class _Day implements Day {
  factory _Day(
      {required final List<String> informations,
      required final List<CalendarEvent> events,
      required final DateTime date}) = _$_Day;

  factory _Day.fromJson(Map<String, dynamic> json) = _$_Day.fromJson;

  @override
  List<String> get informations;
  @override
  List<CalendarEvent> get events;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$_DayCopyWith<_$_Day> get copyWith => throw _privateConstructorUsedError;
}

CalendarEvent _$CalendarEventFromJson(Map<String, dynamic> json) {
  return _CalendarEvent.fromJson(json);
}

/// @nodoc
mixin _$CalendarEvent {
  CalendarEventType get type => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get team => throw _privateConstructorUsedError;
  String get teacher => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarEventCopyWith<CalendarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventCopyWith<$Res> {
  factory $CalendarEventCopyWith(
          CalendarEvent value, $Res Function(CalendarEvent) then) =
      _$CalendarEventCopyWithImpl<$Res, CalendarEvent>;
  @useResult
  $Res call(
      {CalendarEventType type,
      String status,
      String title,
      String team,
      String teacher,
      String room,
      String id,
      String note,
      DateTime start,
      DateTime end});
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res, $Val extends CalendarEvent>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? status = null,
    Object? title = null,
    Object? team = null,
    Object? teacher = null,
    Object? room = null,
    Object? id = null,
    Object? note = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CalendarEventType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalendarEventCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory _$$_CalendarEventCopyWith(
          _$_CalendarEvent value, $Res Function(_$_CalendarEvent) then) =
      __$$_CalendarEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CalendarEventType type,
      String status,
      String title,
      String team,
      String teacher,
      String room,
      String id,
      String note,
      DateTime start,
      DateTime end});
}

/// @nodoc
class __$$_CalendarEventCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$_CalendarEvent>
    implements _$$_CalendarEventCopyWith<$Res> {
  __$$_CalendarEventCopyWithImpl(
      _$_CalendarEvent _value, $Res Function(_$_CalendarEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? status = null,
    Object? title = null,
    Object? team = null,
    Object? teacher = null,
    Object? room = null,
    Object? id = null,
    Object? note = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$_CalendarEvent(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CalendarEventType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalendarEvent implements _CalendarEvent {
  _$_CalendarEvent(
      {required this.type,
      required this.status,
      required this.title,
      required this.team,
      required this.teacher,
      required this.room,
      required this.id,
      required this.note,
      required this.start,
      required this.end});

  factory _$_CalendarEvent.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarEventFromJson(json);

  @override
  final CalendarEventType type;
  @override
  final String status;
  @override
  final String title;
  @override
  final String team;
  @override
  final String teacher;
  @override
  final String room;
  @override
  final String id;
  @override
  final String note;
  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString() {
    return 'CalendarEvent(type: $type, status: $status, title: $title, team: $team, teacher: $teacher, room: $room, id: $id, note: $note, start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarEvent &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, status, title, team,
      teacher, room, id, note, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalendarEventCopyWith<_$_CalendarEvent> get copyWith =>
      __$$_CalendarEventCopyWithImpl<_$_CalendarEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarEventToJson(
      this,
    );
  }
}

abstract class _CalendarEvent implements CalendarEvent {
  factory _CalendarEvent(
      {required final CalendarEventType type,
      required final String status,
      required final String title,
      required final String team,
      required final String teacher,
      required final String room,
      required final String id,
      required final String note,
      required final DateTime start,
      required final DateTime end}) = _$_CalendarEvent;

  factory _CalendarEvent.fromJson(Map<String, dynamic> json) =
      _$_CalendarEvent.fromJson;

  @override
  CalendarEventType get type;
  @override
  String get status;
  @override
  String get title;
  @override
  String get team;
  @override
  String get teacher;
  @override
  String get room;
  @override
  String get id;
  @override
  String get note;
  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarEventCopyWith<_$_CalendarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
