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

DayTime _$DayTimeFromJson(Map<String, dynamic> json) {
  return _DayTime.fromJson(json);
}

/// @nodoc
mixin _$DayTime {
  int get hour => throw _privateConstructorUsedError;
  int get minute => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayTimeCopyWith<DayTime> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayTimeCopyWith<$Res> {
  factory $DayTimeCopyWith(DayTime value, $Res Function(DayTime) then) =
      _$DayTimeCopyWithImpl<$Res, DayTime>;
  @useResult
  $Res call({int hour, int minute});
}

/// @nodoc
class _$DayTimeCopyWithImpl<$Res, $Val extends DayTime>
    implements $DayTimeCopyWith<$Res> {
  _$DayTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? minute = null,
  }) {
    return _then(_value.copyWith(
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: null == minute
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DayTimeCopyWith<$Res> implements $DayTimeCopyWith<$Res> {
  factory _$$_DayTimeCopyWith(
          _$_DayTime value, $Res Function(_$_DayTime) then) =
      __$$_DayTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int hour, int minute});
}

/// @nodoc
class __$$_DayTimeCopyWithImpl<$Res>
    extends _$DayTimeCopyWithImpl<$Res, _$_DayTime>
    implements _$$_DayTimeCopyWith<$Res> {
  __$$_DayTimeCopyWithImpl(_$_DayTime _value, $Res Function(_$_DayTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? minute = null,
  }) {
    return _then(_$_DayTime(
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: null == minute
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DayTime implements _DayTime {
  _$_DayTime({required this.hour, required this.minute});

  factory _$_DayTime.fromJson(Map<String, dynamic> json) =>
      _$$_DayTimeFromJson(json);

  @override
  final int hour;
  @override
  final int minute;

  @override
  String toString() {
    return 'DayTime(hour: $hour, minute: $minute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DayTime &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.minute, minute) || other.minute == minute));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hour, minute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DayTimeCopyWith<_$_DayTime> get copyWith =>
      __$$_DayTimeCopyWithImpl<_$_DayTime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayTimeToJson(
      this,
    );
  }
}

abstract class _DayTime implements DayTime {
  factory _DayTime({required final int hour, required final int minute}) =
      _$_DayTime;

  factory _DayTime.fromJson(Map<String, dynamic> json) = _$_DayTime.fromJson;

  @override
  int get hour;
  @override
  int get minute;
  @override
  @JsonKey(ignore: true)
  _$$_DayTimeCopyWith<_$_DayTime> get copyWith =>
      throw _privateConstructorUsedError;
}

ModulRange _$ModulRangeFromJson(Map<String, dynamic> json) {
  return _ModulRange.fromJson(json);
}

/// @nodoc
mixin _$ModulRange {
  int get number => throw _privateConstructorUsedError;
  DayTime get start => throw _privateConstructorUsedError;
  DayTime get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModulRangeCopyWith<ModulRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModulRangeCopyWith<$Res> {
  factory $ModulRangeCopyWith(
          ModulRange value, $Res Function(ModulRange) then) =
      _$ModulRangeCopyWithImpl<$Res, ModulRange>;
  @useResult
  $Res call({int number, DayTime start, DayTime end});

  $DayTimeCopyWith<$Res> get start;
  $DayTimeCopyWith<$Res> get end;
}

/// @nodoc
class _$ModulRangeCopyWithImpl<$Res, $Val extends ModulRange>
    implements $ModulRangeCopyWith<$Res> {
  _$ModulRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DayTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DayTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DayTimeCopyWith<$Res> get start {
    return $DayTimeCopyWith<$Res>(_value.start, (value) {
      return _then(_value.copyWith(start: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DayTimeCopyWith<$Res> get end {
    return $DayTimeCopyWith<$Res>(_value.end, (value) {
      return _then(_value.copyWith(end: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ModulRangeCopyWith<$Res>
    implements $ModulRangeCopyWith<$Res> {
  factory _$$_ModulRangeCopyWith(
          _$_ModulRange value, $Res Function(_$_ModulRange) then) =
      __$$_ModulRangeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, DayTime start, DayTime end});

  @override
  $DayTimeCopyWith<$Res> get start;
  @override
  $DayTimeCopyWith<$Res> get end;
}

/// @nodoc
class __$$_ModulRangeCopyWithImpl<$Res>
    extends _$ModulRangeCopyWithImpl<$Res, _$_ModulRange>
    implements _$$_ModulRangeCopyWith<$Res> {
  __$$_ModulRangeCopyWithImpl(
      _$_ModulRange _value, $Res Function(_$_ModulRange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$_ModulRange(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DayTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DayTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModulRange implements _ModulRange {
  _$_ModulRange({required this.number, required this.start, required this.end});

  factory _$_ModulRange.fromJson(Map<String, dynamic> json) =>
      _$$_ModulRangeFromJson(json);

  @override
  final int number;
  @override
  final DayTime start;
  @override
  final DayTime end;

  @override
  String toString() {
    return 'ModulRange(number: $number, start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModulRange &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModulRangeCopyWith<_$_ModulRange> get copyWith =>
      __$$_ModulRangeCopyWithImpl<_$_ModulRange>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModulRangeToJson(
      this,
    );
  }
}

abstract class _ModulRange implements ModulRange {
  factory _ModulRange(
      {required final int number,
      required final DayTime start,
      required final DayTime end}) = _$_ModulRange;

  factory _ModulRange.fromJson(Map<String, dynamic> json) =
      _$_ModulRange.fromJson;

  @override
  int get number;
  @override
  DayTime get start;
  @override
  DayTime get end;
  @override
  @JsonKey(ignore: true)
  _$$_ModulRangeCopyWith<_$_ModulRange> get copyWith =>
      throw _privateConstructorUsedError;
}

Week _$WeekFromJson(Map<String, dynamic> json) {
  return _Week.fromJson(json);
}

/// @nodoc
mixin _$Week {
  List<Day> get days => throw _privateConstructorUsedError;
  int get weekNum => throw _privateConstructorUsedError;
  List<ModulRange> get modulRanges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekCopyWith<Week> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekCopyWith<$Res> {
  factory $WeekCopyWith(Week value, $Res Function(Week) then) =
      _$WeekCopyWithImpl<$Res, Week>;
  @useResult
  $Res call({List<Day> days, int weekNum, List<ModulRange> modulRanges});
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
    Object? modulRanges = null,
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
      modulRanges: null == modulRanges
          ? _value.modulRanges
          : modulRanges // ignore: cast_nullable_to_non_nullable
              as List<ModulRange>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeekCopyWith<$Res> implements $WeekCopyWith<$Res> {
  factory _$$_WeekCopyWith(_$_Week value, $Res Function(_$_Week) then) =
      __$$_WeekCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Day> days, int weekNum, List<ModulRange> modulRanges});
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
    Object? modulRanges = null,
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
      modulRanges: null == modulRanges
          ? _value._modulRanges
          : modulRanges // ignore: cast_nullable_to_non_nullable
              as List<ModulRange>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Week implements _Week {
  _$_Week(
      {required final List<Day> days,
      required this.weekNum,
      required final List<ModulRange> modulRanges})
      : _days = days,
        _modulRanges = modulRanges;

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
  final List<ModulRange> _modulRanges;
  @override
  List<ModulRange> get modulRanges {
    if (_modulRanges is EqualUnmodifiableListView) return _modulRanges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modulRanges);
  }

  @override
  String toString() {
    return 'Week(days: $days, weekNum: $weekNum, modulRanges: $modulRanges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Week &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            (identical(other.weekNum, weekNum) || other.weekNum == weekNum) &&
            const DeepCollectionEquality()
                .equals(other._modulRanges, _modulRanges));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_days),
      weekNum,
      const DeepCollectionEquality().hash(_modulRanges));

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
  factory _Week(
      {required final List<Day> days,
      required final int weekNum,
      required final List<ModulRange> modulRanges}) = _$_Week;

  factory _Week.fromJson(Map<String, dynamic> json) = _$_Week.fromJson;

  @override
  List<Day> get days;
  @override
  int get weekNum;
  @override
  List<ModulRange> get modulRanges;
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
  List<String> get teachers => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;
  bool get hasHomework => throw _privateConstructorUsedError;
  bool get hasNote => throw _privateConstructorUsedError;
  List<MetaDataEntry> get teacherObjs => throw _privateConstructorUsedError;
  List<MetaDataEntry> get teamObjs => throw _privateConstructorUsedError;

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
      List<String> teachers,
      String room,
      String id,
      String note,
      DateTime start,
      DateTime end,
      bool hasHomework,
      bool hasNote,
      List<MetaDataEntry> teacherObjs,
      List<MetaDataEntry> teamObjs});
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
    Object? teachers = null,
    Object? room = null,
    Object? id = null,
    Object? note = null,
    Object? start = null,
    Object? end = null,
    Object? hasHomework = null,
    Object? hasNote = null,
    Object? teacherObjs = null,
    Object? teamObjs = null,
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
      teachers: null == teachers
          ? _value.teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      hasHomework: null == hasHomework
          ? _value.hasHomework
          : hasHomework // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNote: null == hasNote
          ? _value.hasNote
          : hasNote // ignore: cast_nullable_to_non_nullable
              as bool,
      teacherObjs: null == teacherObjs
          ? _value.teacherObjs
          : teacherObjs // ignore: cast_nullable_to_non_nullable
              as List<MetaDataEntry>,
      teamObjs: null == teamObjs
          ? _value.teamObjs
          : teamObjs // ignore: cast_nullable_to_non_nullable
              as List<MetaDataEntry>,
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
      List<String> teachers,
      String room,
      String id,
      String note,
      DateTime start,
      DateTime end,
      bool hasHomework,
      bool hasNote,
      List<MetaDataEntry> teacherObjs,
      List<MetaDataEntry> teamObjs});
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
    Object? teachers = null,
    Object? room = null,
    Object? id = null,
    Object? note = null,
    Object? start = null,
    Object? end = null,
    Object? hasHomework = null,
    Object? hasNote = null,
    Object? teacherObjs = null,
    Object? teamObjs = null,
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
      teachers: null == teachers
          ? _value._teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      hasHomework: null == hasHomework
          ? _value.hasHomework
          : hasHomework // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNote: null == hasNote
          ? _value.hasNote
          : hasNote // ignore: cast_nullable_to_non_nullable
              as bool,
      teacherObjs: null == teacherObjs
          ? _value._teacherObjs
          : teacherObjs // ignore: cast_nullable_to_non_nullable
              as List<MetaDataEntry>,
      teamObjs: null == teamObjs
          ? _value._teamObjs
          : teamObjs // ignore: cast_nullable_to_non_nullable
              as List<MetaDataEntry>,
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
      required final List<String> teachers,
      required this.room,
      required this.id,
      required this.note,
      required this.start,
      required this.end,
      required this.hasHomework,
      required this.hasNote,
      required final List<MetaDataEntry> teacherObjs,
      required final List<MetaDataEntry> teamObjs})
      : _teachers = teachers,
        _teacherObjs = teacherObjs,
        _teamObjs = teamObjs;

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
  final List<String> _teachers;
  @override
  List<String> get teachers {
    if (_teachers is EqualUnmodifiableListView) return _teachers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teachers);
  }

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
  final bool hasHomework;
  @override
  final bool hasNote;
  final List<MetaDataEntry> _teacherObjs;
  @override
  List<MetaDataEntry> get teacherObjs {
    if (_teacherObjs is EqualUnmodifiableListView) return _teacherObjs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teacherObjs);
  }

  final List<MetaDataEntry> _teamObjs;
  @override
  List<MetaDataEntry> get teamObjs {
    if (_teamObjs is EqualUnmodifiableListView) return _teamObjs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teamObjs);
  }

  @override
  String toString() {
    return 'CalendarEvent(type: $type, status: $status, title: $title, team: $team, teachers: $teachers, room: $room, id: $id, note: $note, start: $start, end: $end, hasHomework: $hasHomework, hasNote: $hasNote, teacherObjs: $teacherObjs, teamObjs: $teamObjs)';
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
            const DeepCollectionEquality().equals(other._teachers, _teachers) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.hasHomework, hasHomework) ||
                other.hasHomework == hasHomework) &&
            (identical(other.hasNote, hasNote) || other.hasNote == hasNote) &&
            const DeepCollectionEquality()
                .equals(other._teacherObjs, _teacherObjs) &&
            const DeepCollectionEquality().equals(other._teamObjs, _teamObjs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      status,
      title,
      team,
      const DeepCollectionEquality().hash(_teachers),
      room,
      id,
      note,
      start,
      end,
      hasHomework,
      hasNote,
      const DeepCollectionEquality().hash(_teacherObjs),
      const DeepCollectionEquality().hash(_teamObjs));

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
      required final List<String> teachers,
      required final String room,
      required final String id,
      required final String note,
      required final DateTime start,
      required final DateTime end,
      required final bool hasHomework,
      required final bool hasNote,
      required final List<MetaDataEntry> teacherObjs,
      required final List<MetaDataEntry> teamObjs}) = _$_CalendarEvent;

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
  List<String> get teachers;
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
  bool get hasHomework;
  @override
  bool get hasNote;
  @override
  List<MetaDataEntry> get teacherObjs;
  @override
  List<MetaDataEntry> get teamObjs;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarEventCopyWith<_$_CalendarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
