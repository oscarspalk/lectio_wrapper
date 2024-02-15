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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$DayTimeImplCopyWith<$Res> implements $DayTimeCopyWith<$Res> {
  factory _$$DayTimeImplCopyWith(
          _$DayTimeImpl value, $Res Function(_$DayTimeImpl) then) =
      __$$DayTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int hour, int minute});
}

/// @nodoc
class __$$DayTimeImplCopyWithImpl<$Res>
    extends _$DayTimeCopyWithImpl<$Res, _$DayTimeImpl>
    implements _$$DayTimeImplCopyWith<$Res> {
  __$$DayTimeImplCopyWithImpl(
      _$DayTimeImpl _value, $Res Function(_$DayTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? minute = null,
  }) {
    return _then(_$DayTimeImpl(
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
class _$DayTimeImpl implements _DayTime {
  _$DayTimeImpl({required this.hour, required this.minute});

  factory _$DayTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayTimeImplFromJson(json);

  @override
  final int hour;
  @override
  final int minute;

  @override
  String toString() {
    return 'DayTime(hour: $hour, minute: $minute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayTimeImpl &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.minute, minute) || other.minute == minute));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hour, minute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayTimeImplCopyWith<_$DayTimeImpl> get copyWith =>
      __$$DayTimeImplCopyWithImpl<_$DayTimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayTimeImplToJson(
      this,
    );
  }
}

abstract class _DayTime implements DayTime {
  factory _DayTime({required final int hour, required final int minute}) =
      _$DayTimeImpl;

  factory _DayTime.fromJson(Map<String, dynamic> json) = _$DayTimeImpl.fromJson;

  @override
  int get hour;
  @override
  int get minute;
  @override
  @JsonKey(ignore: true)
  _$$DayTimeImplCopyWith<_$DayTimeImpl> get copyWith =>
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
abstract class _$$ModulRangeImplCopyWith<$Res>
    implements $ModulRangeCopyWith<$Res> {
  factory _$$ModulRangeImplCopyWith(
          _$ModulRangeImpl value, $Res Function(_$ModulRangeImpl) then) =
      __$$ModulRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, DayTime start, DayTime end});

  @override
  $DayTimeCopyWith<$Res> get start;
  @override
  $DayTimeCopyWith<$Res> get end;
}

/// @nodoc
class __$$ModulRangeImplCopyWithImpl<$Res>
    extends _$ModulRangeCopyWithImpl<$Res, _$ModulRangeImpl>
    implements _$$ModulRangeImplCopyWith<$Res> {
  __$$ModulRangeImplCopyWithImpl(
      _$ModulRangeImpl _value, $Res Function(_$ModulRangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$ModulRangeImpl(
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
class _$ModulRangeImpl implements _ModulRange {
  _$ModulRangeImpl(
      {required this.number, required this.start, required this.end});

  factory _$ModulRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModulRangeImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModulRangeImpl &&
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
  _$$ModulRangeImplCopyWith<_$ModulRangeImpl> get copyWith =>
      __$$ModulRangeImplCopyWithImpl<_$ModulRangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModulRangeImplToJson(
      this,
    );
  }
}

abstract class _ModulRange implements ModulRange {
  factory _ModulRange(
      {required final int number,
      required final DayTime start,
      required final DayTime end}) = _$ModulRangeImpl;

  factory _ModulRange.fromJson(Map<String, dynamic> json) =
      _$ModulRangeImpl.fromJson;

  @override
  int get number;
  @override
  DayTime get start;
  @override
  DayTime get end;
  @override
  @JsonKey(ignore: true)
  _$$ModulRangeImplCopyWith<_$ModulRangeImpl> get copyWith =>
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
abstract class _$$WeekImplCopyWith<$Res> implements $WeekCopyWith<$Res> {
  factory _$$WeekImplCopyWith(
          _$WeekImpl value, $Res Function(_$WeekImpl) then) =
      __$$WeekImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Day> days, int weekNum, List<ModulRange> modulRanges});
}

/// @nodoc
class __$$WeekImplCopyWithImpl<$Res>
    extends _$WeekCopyWithImpl<$Res, _$WeekImpl>
    implements _$$WeekImplCopyWith<$Res> {
  __$$WeekImplCopyWithImpl(_$WeekImpl _value, $Res Function(_$WeekImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? weekNum = null,
    Object? modulRanges = null,
  }) {
    return _then(_$WeekImpl(
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
class _$WeekImpl implements _Week {
  _$WeekImpl(
      {required final List<Day> days,
      required this.weekNum,
      required final List<ModulRange> modulRanges})
      : _days = days,
        _modulRanges = modulRanges;

  factory _$WeekImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekImpl &&
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
  _$$WeekImplCopyWith<_$WeekImpl> get copyWith =>
      __$$WeekImplCopyWithImpl<_$WeekImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekImplToJson(
      this,
    );
  }
}

abstract class _Week implements Week {
  factory _Week(
      {required final List<Day> days,
      required final int weekNum,
      required final List<ModulRange> modulRanges}) = _$WeekImpl;

  factory _Week.fromJson(Map<String, dynamic> json) = _$WeekImpl.fromJson;

  @override
  List<Day> get days;
  @override
  int get weekNum;
  @override
  List<ModulRange> get modulRanges;
  @override
  @JsonKey(ignore: true)
  _$$WeekImplCopyWith<_$WeekImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
abstract class _$$DayImplCopyWith<$Res> implements $DayCopyWith<$Res> {
  factory _$$DayImplCopyWith(_$DayImpl value, $Res Function(_$DayImpl) then) =
      __$$DayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> informations, List<CalendarEvent> events, DateTime date});
}

/// @nodoc
class __$$DayImplCopyWithImpl<$Res> extends _$DayCopyWithImpl<$Res, _$DayImpl>
    implements _$$DayImplCopyWith<$Res> {
  __$$DayImplCopyWithImpl(_$DayImpl _value, $Res Function(_$DayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? informations = null,
    Object? events = null,
    Object? date = null,
  }) {
    return _then(_$DayImpl(
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
class _$DayImpl implements _Day {
  _$DayImpl(
      {required final List<String> informations,
      required final List<CalendarEvent> events,
      required this.date})
      : _informations = informations,
        _events = events;

  factory _$DayImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayImpl &&
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
  _$$DayImplCopyWith<_$DayImpl> get copyWith =>
      __$$DayImplCopyWithImpl<_$DayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayImplToJson(
      this,
    );
  }
}

abstract class _Day implements Day {
  factory _Day(
      {required final List<String> informations,
      required final List<CalendarEvent> events,
      required final DateTime date}) = _$DayImpl;

  factory _Day.fromJson(Map<String, dynamic> json) = _$DayImpl.fromJson;

  @override
  List<String> get informations;
  @override
  List<CalendarEvent> get events;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$DayImplCopyWith<_$DayImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
abstract class _$$CalendarEventImplCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory _$$CalendarEventImplCopyWith(
          _$CalendarEventImpl value, $Res Function(_$CalendarEventImpl) then) =
      __$$CalendarEventImplCopyWithImpl<$Res>;
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
class __$$CalendarEventImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$CalendarEventImpl>
    implements _$$CalendarEventImplCopyWith<$Res> {
  __$$CalendarEventImplCopyWithImpl(
      _$CalendarEventImpl _value, $Res Function(_$CalendarEventImpl) _then)
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
    return _then(_$CalendarEventImpl(
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
class _$CalendarEventImpl implements _CalendarEvent {
  _$CalendarEventImpl(
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

  factory _$CalendarEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalendarEventImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarEventImpl &&
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
  _$$CalendarEventImplCopyWith<_$CalendarEventImpl> get copyWith =>
      __$$CalendarEventImplCopyWithImpl<_$CalendarEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalendarEventImplToJson(
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
      required final List<MetaDataEntry> teamObjs}) = _$CalendarEventImpl;

  factory _CalendarEvent.fromJson(Map<String, dynamic> json) =
      _$CalendarEventImpl.fromJson;

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
  _$$CalendarEventImplCopyWith<_$CalendarEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
