// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AbsenceEntry {
  Team get team => throw _privateConstructorUsedError;
  RegularEntryData get regular => throw _privateConstructorUsedError;
  AssignmentEntryData get assignment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AbsenceEntryCopyWith<AbsenceEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbsenceEntryCopyWith<$Res> {
  factory $AbsenceEntryCopyWith(
          AbsenceEntry value, $Res Function(AbsenceEntry) then) =
      _$AbsenceEntryCopyWithImpl<$Res, AbsenceEntry>;
  @useResult
  $Res call(
      {Team team, RegularEntryData regular, AssignmentEntryData assignment});

  $TeamCopyWith<$Res> get team;
  $RegularEntryDataCopyWith<$Res> get regular;
  $AssignmentEntryDataCopyWith<$Res> get assignment;
}

/// @nodoc
class _$AbsenceEntryCopyWithImpl<$Res, $Val extends AbsenceEntry>
    implements $AbsenceEntryCopyWith<$Res> {
  _$AbsenceEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? regular = null,
    Object? assignment = null,
  }) {
    return _then(_value.copyWith(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as RegularEntryData,
      assignment: null == assignment
          ? _value.assignment
          : assignment // ignore: cast_nullable_to_non_nullable
              as AssignmentEntryData,
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
  $RegularEntryDataCopyWith<$Res> get regular {
    return $RegularEntryDataCopyWith<$Res>(_value.regular, (value) {
      return _then(_value.copyWith(regular: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AssignmentEntryDataCopyWith<$Res> get assignment {
    return $AssignmentEntryDataCopyWith<$Res>(_value.assignment, (value) {
      return _then(_value.copyWith(assignment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AbsenceEntryCopyWith<$Res>
    implements $AbsenceEntryCopyWith<$Res> {
  factory _$$_AbsenceEntryCopyWith(
          _$_AbsenceEntry value, $Res Function(_$_AbsenceEntry) then) =
      __$$_AbsenceEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Team team, RegularEntryData regular, AssignmentEntryData assignment});

  @override
  $TeamCopyWith<$Res> get team;
  @override
  $RegularEntryDataCopyWith<$Res> get regular;
  @override
  $AssignmentEntryDataCopyWith<$Res> get assignment;
}

/// @nodoc
class __$$_AbsenceEntryCopyWithImpl<$Res>
    extends _$AbsenceEntryCopyWithImpl<$Res, _$_AbsenceEntry>
    implements _$$_AbsenceEntryCopyWith<$Res> {
  __$$_AbsenceEntryCopyWithImpl(
      _$_AbsenceEntry _value, $Res Function(_$_AbsenceEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? regular = null,
    Object? assignment = null,
  }) {
    return _then(_$_AbsenceEntry(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as RegularEntryData,
      assignment: null == assignment
          ? _value.assignment
          : assignment // ignore: cast_nullable_to_non_nullable
              as AssignmentEntryData,
    ));
  }
}

/// @nodoc

class _$_AbsenceEntry implements _AbsenceEntry {
  _$_AbsenceEntry(
      {required this.team, required this.regular, required this.assignment});

  @override
  final Team team;
  @override
  final RegularEntryData regular;
  @override
  final AssignmentEntryData assignment;

  @override
  String toString() {
    return 'AbsenceEntry(team: $team, regular: $regular, assignment: $assignment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbsenceEntry &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.regular, regular) || other.regular == regular) &&
            (identical(other.assignment, assignment) ||
                other.assignment == assignment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, team, regular, assignment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AbsenceEntryCopyWith<_$_AbsenceEntry> get copyWith =>
      __$$_AbsenceEntryCopyWithImpl<_$_AbsenceEntry>(this, _$identity);
}

abstract class _AbsenceEntry implements AbsenceEntry {
  factory _AbsenceEntry(
      {required final Team team,
      required final RegularEntryData regular,
      required final AssignmentEntryData assignment}) = _$_AbsenceEntry;

  @override
  Team get team;
  @override
  RegularEntryData get regular;
  @override
  AssignmentEntryData get assignment;
  @override
  @JsonKey(ignore: true)
  _$$_AbsenceEntryCopyWith<_$_AbsenceEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegularEntryData {
  double get currentPercent => throw _privateConstructorUsedError;
  AbsenceFraction get currentModules => throw _privateConstructorUsedError;
  double get finalPercent => throw _privateConstructorUsedError;
  AbsenceFraction get finalModules => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegularEntryDataCopyWith<RegularEntryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegularEntryDataCopyWith<$Res> {
  factory $RegularEntryDataCopyWith(
          RegularEntryData value, $Res Function(RegularEntryData) then) =
      _$RegularEntryDataCopyWithImpl<$Res, RegularEntryData>;
  @useResult
  $Res call(
      {double currentPercent,
      AbsenceFraction currentModules,
      double finalPercent,
      AbsenceFraction finalModules});

  $AbsenceFractionCopyWith<$Res> get currentModules;
  $AbsenceFractionCopyWith<$Res> get finalModules;
}

/// @nodoc
class _$RegularEntryDataCopyWithImpl<$Res, $Val extends RegularEntryData>
    implements $RegularEntryDataCopyWith<$Res> {
  _$RegularEntryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPercent = null,
    Object? currentModules = null,
    Object? finalPercent = null,
    Object? finalModules = null,
  }) {
    return _then(_value.copyWith(
      currentPercent: null == currentPercent
          ? _value.currentPercent
          : currentPercent // ignore: cast_nullable_to_non_nullable
              as double,
      currentModules: null == currentModules
          ? _value.currentModules
          : currentModules // ignore: cast_nullable_to_non_nullable
              as AbsenceFraction,
      finalPercent: null == finalPercent
          ? _value.finalPercent
          : finalPercent // ignore: cast_nullable_to_non_nullable
              as double,
      finalModules: null == finalModules
          ? _value.finalModules
          : finalModules // ignore: cast_nullable_to_non_nullable
              as AbsenceFraction,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AbsenceFractionCopyWith<$Res> get currentModules {
    return $AbsenceFractionCopyWith<$Res>(_value.currentModules, (value) {
      return _then(_value.copyWith(currentModules: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AbsenceFractionCopyWith<$Res> get finalModules {
    return $AbsenceFractionCopyWith<$Res>(_value.finalModules, (value) {
      return _then(_value.copyWith(finalModules: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RegularEntryDataCopyWith<$Res>
    implements $RegularEntryDataCopyWith<$Res> {
  factory _$$_RegularEntryDataCopyWith(
          _$_RegularEntryData value, $Res Function(_$_RegularEntryData) then) =
      __$$_RegularEntryDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double currentPercent,
      AbsenceFraction currentModules,
      double finalPercent,
      AbsenceFraction finalModules});

  @override
  $AbsenceFractionCopyWith<$Res> get currentModules;
  @override
  $AbsenceFractionCopyWith<$Res> get finalModules;
}

/// @nodoc
class __$$_RegularEntryDataCopyWithImpl<$Res>
    extends _$RegularEntryDataCopyWithImpl<$Res, _$_RegularEntryData>
    implements _$$_RegularEntryDataCopyWith<$Res> {
  __$$_RegularEntryDataCopyWithImpl(
      _$_RegularEntryData _value, $Res Function(_$_RegularEntryData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPercent = null,
    Object? currentModules = null,
    Object? finalPercent = null,
    Object? finalModules = null,
  }) {
    return _then(_$_RegularEntryData(
      currentPercent: null == currentPercent
          ? _value.currentPercent
          : currentPercent // ignore: cast_nullable_to_non_nullable
              as double,
      currentModules: null == currentModules
          ? _value.currentModules
          : currentModules // ignore: cast_nullable_to_non_nullable
              as AbsenceFraction,
      finalPercent: null == finalPercent
          ? _value.finalPercent
          : finalPercent // ignore: cast_nullable_to_non_nullable
              as double,
      finalModules: null == finalModules
          ? _value.finalModules
          : finalModules // ignore: cast_nullable_to_non_nullable
              as AbsenceFraction,
    ));
  }
}

/// @nodoc

class _$_RegularEntryData implements _RegularEntryData {
  _$_RegularEntryData(
      {required this.currentPercent,
      required this.currentModules,
      required this.finalPercent,
      required this.finalModules});

  @override
  final double currentPercent;
  @override
  final AbsenceFraction currentModules;
  @override
  final double finalPercent;
  @override
  final AbsenceFraction finalModules;

  @override
  String toString() {
    return 'RegularEntryData(currentPercent: $currentPercent, currentModules: $currentModules, finalPercent: $finalPercent, finalModules: $finalModules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegularEntryData &&
            (identical(other.currentPercent, currentPercent) ||
                other.currentPercent == currentPercent) &&
            (identical(other.currentModules, currentModules) ||
                other.currentModules == currentModules) &&
            (identical(other.finalPercent, finalPercent) ||
                other.finalPercent == finalPercent) &&
            (identical(other.finalModules, finalModules) ||
                other.finalModules == finalModules));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentPercent, currentModules, finalPercent, finalModules);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegularEntryDataCopyWith<_$_RegularEntryData> get copyWith =>
      __$$_RegularEntryDataCopyWithImpl<_$_RegularEntryData>(this, _$identity);
}

abstract class _RegularEntryData implements RegularEntryData {
  factory _RegularEntryData(
      {required final double currentPercent,
      required final AbsenceFraction currentModules,
      required final double finalPercent,
      required final AbsenceFraction finalModules}) = _$_RegularEntryData;

  @override
  double get currentPercent;
  @override
  AbsenceFraction get currentModules;
  @override
  double get finalPercent;
  @override
  AbsenceFraction get finalModules;
  @override
  @JsonKey(ignore: true)
  _$$_RegularEntryDataCopyWith<_$_RegularEntryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AssignmentEntryData {
  double get currentPercent => throw _privateConstructorUsedError;
  AbsenceFraction get currentStudentTime => throw _privateConstructorUsedError;
  double get finalPercent => throw _privateConstructorUsedError;
  AbsenceFraction get finalStudentTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AssignmentEntryDataCopyWith<AssignmentEntryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentEntryDataCopyWith<$Res> {
  factory $AssignmentEntryDataCopyWith(
          AssignmentEntryData value, $Res Function(AssignmentEntryData) then) =
      _$AssignmentEntryDataCopyWithImpl<$Res, AssignmentEntryData>;
  @useResult
  $Res call(
      {double currentPercent,
      AbsenceFraction currentStudentTime,
      double finalPercent,
      AbsenceFraction finalStudentTime});

  $AbsenceFractionCopyWith<$Res> get currentStudentTime;
  $AbsenceFractionCopyWith<$Res> get finalStudentTime;
}

/// @nodoc
class _$AssignmentEntryDataCopyWithImpl<$Res, $Val extends AssignmentEntryData>
    implements $AssignmentEntryDataCopyWith<$Res> {
  _$AssignmentEntryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPercent = null,
    Object? currentStudentTime = null,
    Object? finalPercent = null,
    Object? finalStudentTime = null,
  }) {
    return _then(_value.copyWith(
      currentPercent: null == currentPercent
          ? _value.currentPercent
          : currentPercent // ignore: cast_nullable_to_non_nullable
              as double,
      currentStudentTime: null == currentStudentTime
          ? _value.currentStudentTime
          : currentStudentTime // ignore: cast_nullable_to_non_nullable
              as AbsenceFraction,
      finalPercent: null == finalPercent
          ? _value.finalPercent
          : finalPercent // ignore: cast_nullable_to_non_nullable
              as double,
      finalStudentTime: null == finalStudentTime
          ? _value.finalStudentTime
          : finalStudentTime // ignore: cast_nullable_to_non_nullable
              as AbsenceFraction,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AbsenceFractionCopyWith<$Res> get currentStudentTime {
    return $AbsenceFractionCopyWith<$Res>(_value.currentStudentTime, (value) {
      return _then(_value.copyWith(currentStudentTime: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AbsenceFractionCopyWith<$Res> get finalStudentTime {
    return $AbsenceFractionCopyWith<$Res>(_value.finalStudentTime, (value) {
      return _then(_value.copyWith(finalStudentTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AssignmentEntryDataCopyWith<$Res>
    implements $AssignmentEntryDataCopyWith<$Res> {
  factory _$$_AssignmentEntryDataCopyWith(_$_AssignmentEntryData value,
          $Res Function(_$_AssignmentEntryData) then) =
      __$$_AssignmentEntryDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double currentPercent,
      AbsenceFraction currentStudentTime,
      double finalPercent,
      AbsenceFraction finalStudentTime});

  @override
  $AbsenceFractionCopyWith<$Res> get currentStudentTime;
  @override
  $AbsenceFractionCopyWith<$Res> get finalStudentTime;
}

/// @nodoc
class __$$_AssignmentEntryDataCopyWithImpl<$Res>
    extends _$AssignmentEntryDataCopyWithImpl<$Res, _$_AssignmentEntryData>
    implements _$$_AssignmentEntryDataCopyWith<$Res> {
  __$$_AssignmentEntryDataCopyWithImpl(_$_AssignmentEntryData _value,
      $Res Function(_$_AssignmentEntryData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPercent = null,
    Object? currentStudentTime = null,
    Object? finalPercent = null,
    Object? finalStudentTime = null,
  }) {
    return _then(_$_AssignmentEntryData(
      currentPercent: null == currentPercent
          ? _value.currentPercent
          : currentPercent // ignore: cast_nullable_to_non_nullable
              as double,
      currentStudentTime: null == currentStudentTime
          ? _value.currentStudentTime
          : currentStudentTime // ignore: cast_nullable_to_non_nullable
              as AbsenceFraction,
      finalPercent: null == finalPercent
          ? _value.finalPercent
          : finalPercent // ignore: cast_nullable_to_non_nullable
              as double,
      finalStudentTime: null == finalStudentTime
          ? _value.finalStudentTime
          : finalStudentTime // ignore: cast_nullable_to_non_nullable
              as AbsenceFraction,
    ));
  }
}

/// @nodoc

class _$_AssignmentEntryData implements _AssignmentEntryData {
  _$_AssignmentEntryData(
      {required this.currentPercent,
      required this.currentStudentTime,
      required this.finalPercent,
      required this.finalStudentTime});

  @override
  final double currentPercent;
  @override
  final AbsenceFraction currentStudentTime;
  @override
  final double finalPercent;
  @override
  final AbsenceFraction finalStudentTime;

  @override
  String toString() {
    return 'AssignmentEntryData(currentPercent: $currentPercent, currentStudentTime: $currentStudentTime, finalPercent: $finalPercent, finalStudentTime: $finalStudentTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssignmentEntryData &&
            (identical(other.currentPercent, currentPercent) ||
                other.currentPercent == currentPercent) &&
            (identical(other.currentStudentTime, currentStudentTime) ||
                other.currentStudentTime == currentStudentTime) &&
            (identical(other.finalPercent, finalPercent) ||
                other.finalPercent == finalPercent) &&
            (identical(other.finalStudentTime, finalStudentTime) ||
                other.finalStudentTime == finalStudentTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPercent,
      currentStudentTime, finalPercent, finalStudentTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssignmentEntryDataCopyWith<_$_AssignmentEntryData> get copyWith =>
      __$$_AssignmentEntryDataCopyWithImpl<_$_AssignmentEntryData>(
          this, _$identity);
}

abstract class _AssignmentEntryData implements AssignmentEntryData {
  factory _AssignmentEntryData(
          {required final double currentPercent,
          required final AbsenceFraction currentStudentTime,
          required final double finalPercent,
          required final AbsenceFraction finalStudentTime}) =
      _$_AssignmentEntryData;

  @override
  double get currentPercent;
  @override
  AbsenceFraction get currentStudentTime;
  @override
  double get finalPercent;
  @override
  AbsenceFraction get finalStudentTime;
  @override
  @JsonKey(ignore: true)
  _$$_AssignmentEntryDataCopyWith<_$_AssignmentEntryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AbsenceFraction {
  double get current => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AbsenceFractionCopyWith<AbsenceFraction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbsenceFractionCopyWith<$Res> {
  factory $AbsenceFractionCopyWith(
          AbsenceFraction value, $Res Function(AbsenceFraction) then) =
      _$AbsenceFractionCopyWithImpl<$Res, AbsenceFraction>;
  @useResult
  $Res call({double current, double total});
}

/// @nodoc
class _$AbsenceFractionCopyWithImpl<$Res, $Val extends AbsenceFraction>
    implements $AbsenceFractionCopyWith<$Res> {
  _$AbsenceFractionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AbsenceFractionCopyWith<$Res>
    implements $AbsenceFractionCopyWith<$Res> {
  factory _$$_AbsenceFractionCopyWith(
          _$_AbsenceFraction value, $Res Function(_$_AbsenceFraction) then) =
      __$$_AbsenceFractionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double current, double total});
}

/// @nodoc
class __$$_AbsenceFractionCopyWithImpl<$Res>
    extends _$AbsenceFractionCopyWithImpl<$Res, _$_AbsenceFraction>
    implements _$$_AbsenceFractionCopyWith<$Res> {
  __$$_AbsenceFractionCopyWithImpl(
      _$_AbsenceFraction _value, $Res Function(_$_AbsenceFraction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? total = null,
  }) {
    return _then(_$_AbsenceFraction(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_AbsenceFraction implements _AbsenceFraction {
  _$_AbsenceFraction({required this.current, required this.total});

  @override
  final double current;
  @override
  final double total;

  @override
  String toString() {
    return 'AbsenceFraction(current: $current, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbsenceFraction &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, current, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AbsenceFractionCopyWith<_$_AbsenceFraction> get copyWith =>
      __$$_AbsenceFractionCopyWithImpl<_$_AbsenceFraction>(this, _$identity);
}

abstract class _AbsenceFraction implements AbsenceFraction {
  factory _AbsenceFraction(
      {required final double current,
      required final double total}) = _$_AbsenceFraction;

  @override
  double get current;
  @override
  double get total;
  @override
  @JsonKey(ignore: true)
  _$$_AbsenceFractionCopyWith<_$_AbsenceFraction> get copyWith =>
      throw _privateConstructorUsedError;
}
