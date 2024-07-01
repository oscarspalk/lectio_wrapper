// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExamEntry {
  ExamGrade? get yearGrade => throw _privateConstructorUsedError;
  ExamGrade? get examGrade => throw _privateConstructorUsedError;
  String get team => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExamEntryCopyWith<ExamEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamEntryCopyWith<$Res> {
  factory $ExamEntryCopyWith(ExamEntry value, $Res Function(ExamEntry) then) =
      _$ExamEntryCopyWithImpl<$Res, ExamEntry>;
  @useResult
  $Res call({ExamGrade? yearGrade, ExamGrade? examGrade, String team});

  $ExamGradeCopyWith<$Res>? get yearGrade;
  $ExamGradeCopyWith<$Res>? get examGrade;
}

/// @nodoc
class _$ExamEntryCopyWithImpl<$Res, $Val extends ExamEntry>
    implements $ExamEntryCopyWith<$Res> {
  _$ExamEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearGrade = freezed,
    Object? examGrade = freezed,
    Object? team = null,
  }) {
    return _then(_value.copyWith(
      yearGrade: freezed == yearGrade
          ? _value.yearGrade
          : yearGrade // ignore: cast_nullable_to_non_nullable
              as ExamGrade?,
      examGrade: freezed == examGrade
          ? _value.examGrade
          : examGrade // ignore: cast_nullable_to_non_nullable
              as ExamGrade?,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExamGradeCopyWith<$Res>? get yearGrade {
    if (_value.yearGrade == null) {
      return null;
    }

    return $ExamGradeCopyWith<$Res>(_value.yearGrade!, (value) {
      return _then(_value.copyWith(yearGrade: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExamGradeCopyWith<$Res>? get examGrade {
    if (_value.examGrade == null) {
      return null;
    }

    return $ExamGradeCopyWith<$Res>(_value.examGrade!, (value) {
      return _then(_value.copyWith(examGrade: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExamEntryImplCopyWith<$Res>
    implements $ExamEntryCopyWith<$Res> {
  factory _$$ExamEntryImplCopyWith(
          _$ExamEntryImpl value, $Res Function(_$ExamEntryImpl) then) =
      __$$ExamEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExamGrade? yearGrade, ExamGrade? examGrade, String team});

  @override
  $ExamGradeCopyWith<$Res>? get yearGrade;
  @override
  $ExamGradeCopyWith<$Res>? get examGrade;
}

/// @nodoc
class __$$ExamEntryImplCopyWithImpl<$Res>
    extends _$ExamEntryCopyWithImpl<$Res, _$ExamEntryImpl>
    implements _$$ExamEntryImplCopyWith<$Res> {
  __$$ExamEntryImplCopyWithImpl(
      _$ExamEntryImpl _value, $Res Function(_$ExamEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearGrade = freezed,
    Object? examGrade = freezed,
    Object? team = null,
  }) {
    return _then(_$ExamEntryImpl(
      yearGrade: freezed == yearGrade
          ? _value.yearGrade
          : yearGrade // ignore: cast_nullable_to_non_nullable
              as ExamGrade?,
      examGrade: freezed == examGrade
          ? _value.examGrade
          : examGrade // ignore: cast_nullable_to_non_nullable
              as ExamGrade?,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExamEntryImpl implements _ExamEntry {
  _$ExamEntryImpl({this.yearGrade, this.examGrade, required this.team});

  @override
  final ExamGrade? yearGrade;
  @override
  final ExamGrade? examGrade;
  @override
  final String team;

  @override
  String toString() {
    return 'ExamEntry(yearGrade: $yearGrade, examGrade: $examGrade, team: $team)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamEntryImpl &&
            (identical(other.yearGrade, yearGrade) ||
                other.yearGrade == yearGrade) &&
            (identical(other.examGrade, examGrade) ||
                other.examGrade == examGrade) &&
            (identical(other.team, team) || other.team == team));
  }

  @override
  int get hashCode => Object.hash(runtimeType, yearGrade, examGrade, team);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamEntryImplCopyWith<_$ExamEntryImpl> get copyWith =>
      __$$ExamEntryImplCopyWithImpl<_$ExamEntryImpl>(this, _$identity);
}

abstract class _ExamEntry implements ExamEntry {
  factory _ExamEntry(
      {final ExamGrade? yearGrade,
      final ExamGrade? examGrade,
      required final String team}) = _$ExamEntryImpl;

  @override
  ExamGrade? get yearGrade;
  @override
  ExamGrade? get examGrade;
  @override
  String get team;
  @override
  @JsonKey(ignore: true)
  _$$ExamEntryImplCopyWith<_$ExamEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
