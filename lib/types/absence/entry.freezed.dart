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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$AbsenceEntryImplCopyWith<$Res>
    implements $AbsenceEntryCopyWith<$Res> {
  factory _$$AbsenceEntryImplCopyWith(
          _$AbsenceEntryImpl value, $Res Function(_$AbsenceEntryImpl) then) =
      __$$AbsenceEntryImplCopyWithImpl<$Res>;
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
class __$$AbsenceEntryImplCopyWithImpl<$Res>
    extends _$AbsenceEntryCopyWithImpl<$Res, _$AbsenceEntryImpl>
    implements _$$AbsenceEntryImplCopyWith<$Res> {
  __$$AbsenceEntryImplCopyWithImpl(
      _$AbsenceEntryImpl _value, $Res Function(_$AbsenceEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? regular = null,
    Object? assignment = null,
  }) {
    return _then(_$AbsenceEntryImpl(
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

class _$AbsenceEntryImpl implements _AbsenceEntry {
  _$AbsenceEntryImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbsenceEntryImpl &&
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
  _$$AbsenceEntryImplCopyWith<_$AbsenceEntryImpl> get copyWith =>
      __$$AbsenceEntryImplCopyWithImpl<_$AbsenceEntryImpl>(this, _$identity);
}

abstract class _AbsenceEntry implements AbsenceEntry {
  factory _AbsenceEntry(
      {required final Team team,
      required final RegularEntryData regular,
      required final AssignmentEntryData assignment}) = _$AbsenceEntryImpl;

  @override
  Team get team;
  @override
  RegularEntryData get regular;
  @override
  AssignmentEntryData get assignment;
  @override
  @JsonKey(ignore: true)
  _$$AbsenceEntryImplCopyWith<_$AbsenceEntryImpl> get copyWith =>
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
abstract class _$$RegularEntryDataImplCopyWith<$Res>
    implements $RegularEntryDataCopyWith<$Res> {
  factory _$$RegularEntryDataImplCopyWith(_$RegularEntryDataImpl value,
          $Res Function(_$RegularEntryDataImpl) then) =
      __$$RegularEntryDataImplCopyWithImpl<$Res>;
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
class __$$RegularEntryDataImplCopyWithImpl<$Res>
    extends _$RegularEntryDataCopyWithImpl<$Res, _$RegularEntryDataImpl>
    implements _$$RegularEntryDataImplCopyWith<$Res> {
  __$$RegularEntryDataImplCopyWithImpl(_$RegularEntryDataImpl _value,
      $Res Function(_$RegularEntryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPercent = null,
    Object? currentModules = null,
    Object? finalPercent = null,
    Object? finalModules = null,
  }) {
    return _then(_$RegularEntryDataImpl(
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

class _$RegularEntryDataImpl implements _RegularEntryData {
  _$RegularEntryDataImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegularEntryDataImpl &&
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
  _$$RegularEntryDataImplCopyWith<_$RegularEntryDataImpl> get copyWith =>
      __$$RegularEntryDataImplCopyWithImpl<_$RegularEntryDataImpl>(
          this, _$identity);
}

abstract class _RegularEntryData implements RegularEntryData {
  factory _RegularEntryData(
      {required final double currentPercent,
      required final AbsenceFraction currentModules,
      required final double finalPercent,
      required final AbsenceFraction finalModules}) = _$RegularEntryDataImpl;

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
  _$$RegularEntryDataImplCopyWith<_$RegularEntryDataImpl> get copyWith =>
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
abstract class _$$AssignmentEntryDataImplCopyWith<$Res>
    implements $AssignmentEntryDataCopyWith<$Res> {
  factory _$$AssignmentEntryDataImplCopyWith(_$AssignmentEntryDataImpl value,
          $Res Function(_$AssignmentEntryDataImpl) then) =
      __$$AssignmentEntryDataImplCopyWithImpl<$Res>;
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
class __$$AssignmentEntryDataImplCopyWithImpl<$Res>
    extends _$AssignmentEntryDataCopyWithImpl<$Res, _$AssignmentEntryDataImpl>
    implements _$$AssignmentEntryDataImplCopyWith<$Res> {
  __$$AssignmentEntryDataImplCopyWithImpl(_$AssignmentEntryDataImpl _value,
      $Res Function(_$AssignmentEntryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPercent = null,
    Object? currentStudentTime = null,
    Object? finalPercent = null,
    Object? finalStudentTime = null,
  }) {
    return _then(_$AssignmentEntryDataImpl(
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

class _$AssignmentEntryDataImpl implements _AssignmentEntryData {
  _$AssignmentEntryDataImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignmentEntryDataImpl &&
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
  _$$AssignmentEntryDataImplCopyWith<_$AssignmentEntryDataImpl> get copyWith =>
      __$$AssignmentEntryDataImplCopyWithImpl<_$AssignmentEntryDataImpl>(
          this, _$identity);
}

abstract class _AssignmentEntryData implements AssignmentEntryData {
  factory _AssignmentEntryData(
          {required final double currentPercent,
          required final AbsenceFraction currentStudentTime,
          required final double finalPercent,
          required final AbsenceFraction finalStudentTime}) =
      _$AssignmentEntryDataImpl;

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
  _$$AssignmentEntryDataImplCopyWith<_$AssignmentEntryDataImpl> get copyWith =>
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
abstract class _$$AbsenceFractionImplCopyWith<$Res>
    implements $AbsenceFractionCopyWith<$Res> {
  factory _$$AbsenceFractionImplCopyWith(_$AbsenceFractionImpl value,
          $Res Function(_$AbsenceFractionImpl) then) =
      __$$AbsenceFractionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double current, double total});
}

/// @nodoc
class __$$AbsenceFractionImplCopyWithImpl<$Res>
    extends _$AbsenceFractionCopyWithImpl<$Res, _$AbsenceFractionImpl>
    implements _$$AbsenceFractionImplCopyWith<$Res> {
  __$$AbsenceFractionImplCopyWithImpl(
      _$AbsenceFractionImpl _value, $Res Function(_$AbsenceFractionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? total = null,
  }) {
    return _then(_$AbsenceFractionImpl(
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

class _$AbsenceFractionImpl implements _AbsenceFraction {
  _$AbsenceFractionImpl({required this.current, required this.total});

  @override
  final double current;
  @override
  final double total;

  @override
  String toString() {
    return 'AbsenceFraction(current: $current, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbsenceFractionImpl &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, current, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbsenceFractionImplCopyWith<_$AbsenceFractionImpl> get copyWith =>
      __$$AbsenceFractionImplCopyWithImpl<_$AbsenceFractionImpl>(
          this, _$identity);
}

abstract class _AbsenceFraction implements AbsenceFraction {
  factory _AbsenceFraction(
      {required final double current,
      required final double total}) = _$AbsenceFractionImpl;

  @override
  double get current;
  @override
  double get total;
  @override
  @JsonKey(ignore: true)
  _$$AbsenceFractionImplCopyWith<_$AbsenceFractionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
