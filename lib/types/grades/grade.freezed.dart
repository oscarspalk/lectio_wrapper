// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grade.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Grade {
  double get weight => throw _privateConstructorUsedError;
  int get grade => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GradeCopyWith<Grade> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GradeCopyWith<$Res> {
  factory $GradeCopyWith(Grade value, $Res Function(Grade) then) =
      _$GradeCopyWithImpl<$Res, Grade>;
  @useResult
  $Res call({double weight, int grade});
}

/// @nodoc
class _$GradeCopyWithImpl<$Res, $Val extends Grade>
    implements $GradeCopyWith<$Res> {
  _$GradeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? grade = null,
  }) {
    return _then(_value.copyWith(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GradeImplCopyWith<$Res> implements $GradeCopyWith<$Res> {
  factory _$$GradeImplCopyWith(
          _$GradeImpl value, $Res Function(_$GradeImpl) then) =
      __$$GradeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double weight, int grade});
}

/// @nodoc
class __$$GradeImplCopyWithImpl<$Res>
    extends _$GradeCopyWithImpl<$Res, _$GradeImpl>
    implements _$$GradeImplCopyWith<$Res> {
  __$$GradeImplCopyWithImpl(
      _$GradeImpl _value, $Res Function(_$GradeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? grade = null,
  }) {
    return _then(_$GradeImpl(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GradeImpl implements _Grade {
  _$GradeImpl({required this.weight, required this.grade});

  @override
  final double weight;
  @override
  final int grade;

  @override
  String toString() {
    return 'Grade(weight: $weight, grade: $grade)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GradeImpl &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.grade, grade) || other.grade == grade));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weight, grade);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GradeImplCopyWith<_$GradeImpl> get copyWith =>
      __$$GradeImplCopyWithImpl<_$GradeImpl>(this, _$identity);
}

abstract class _Grade implements Grade {
  factory _Grade({required final double weight, required final int grade}) =
      _$GradeImpl;

  @override
  double get weight;
  @override
  int get grade;
  @override
  @JsonKey(ignore: true)
  _$$GradeImplCopyWith<_$GradeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GradeRow {
  Team get team => throw _privateConstructorUsedError;
  Subject get subject => throw _privateConstructorUsedError;
  Grade? get firstStandpunkt => throw _privateConstructorUsedError;
  Grade? get secondStandpunkt => throw _privateConstructorUsedError;
  Grade? get finalYearGrade => throw _privateConstructorUsedError;
  Grade? get internalTest => throw _privateConstructorUsedError;
  Grade? get yearGrade => throw _privateConstructorUsedError;
  Grade? get examGrade => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GradeRowCopyWith<GradeRow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GradeRowCopyWith<$Res> {
  factory $GradeRowCopyWith(GradeRow value, $Res Function(GradeRow) then) =
      _$GradeRowCopyWithImpl<$Res, GradeRow>;
  @useResult
  $Res call(
      {Team team,
      Subject subject,
      Grade? firstStandpunkt,
      Grade? secondStandpunkt,
      Grade? finalYearGrade,
      Grade? internalTest,
      Grade? yearGrade,
      Grade? examGrade});

  $TeamCopyWith<$Res> get team;
  $SubjectCopyWith<$Res> get subject;
  $GradeCopyWith<$Res>? get firstStandpunkt;
  $GradeCopyWith<$Res>? get secondStandpunkt;
  $GradeCopyWith<$Res>? get finalYearGrade;
  $GradeCopyWith<$Res>? get internalTest;
  $GradeCopyWith<$Res>? get yearGrade;
  $GradeCopyWith<$Res>? get examGrade;
}

/// @nodoc
class _$GradeRowCopyWithImpl<$Res, $Val extends GradeRow>
    implements $GradeRowCopyWith<$Res> {
  _$GradeRowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? subject = null,
    Object? firstStandpunkt = freezed,
    Object? secondStandpunkt = freezed,
    Object? finalYearGrade = freezed,
    Object? internalTest = freezed,
    Object? yearGrade = freezed,
    Object? examGrade = freezed,
  }) {
    return _then(_value.copyWith(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Subject,
      firstStandpunkt: freezed == firstStandpunkt
          ? _value.firstStandpunkt
          : firstStandpunkt // ignore: cast_nullable_to_non_nullable
              as Grade?,
      secondStandpunkt: freezed == secondStandpunkt
          ? _value.secondStandpunkt
          : secondStandpunkt // ignore: cast_nullable_to_non_nullable
              as Grade?,
      finalYearGrade: freezed == finalYearGrade
          ? _value.finalYearGrade
          : finalYearGrade // ignore: cast_nullable_to_non_nullable
              as Grade?,
      internalTest: freezed == internalTest
          ? _value.internalTest
          : internalTest // ignore: cast_nullable_to_non_nullable
              as Grade?,
      yearGrade: freezed == yearGrade
          ? _value.yearGrade
          : yearGrade // ignore: cast_nullable_to_non_nullable
              as Grade?,
      examGrade: freezed == examGrade
          ? _value.examGrade
          : examGrade // ignore: cast_nullable_to_non_nullable
              as Grade?,
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
  $SubjectCopyWith<$Res> get subject {
    return $SubjectCopyWith<$Res>(_value.subject, (value) {
      return _then(_value.copyWith(subject: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GradeCopyWith<$Res>? get firstStandpunkt {
    if (_value.firstStandpunkt == null) {
      return null;
    }

    return $GradeCopyWith<$Res>(_value.firstStandpunkt!, (value) {
      return _then(_value.copyWith(firstStandpunkt: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GradeCopyWith<$Res>? get secondStandpunkt {
    if (_value.secondStandpunkt == null) {
      return null;
    }

    return $GradeCopyWith<$Res>(_value.secondStandpunkt!, (value) {
      return _then(_value.copyWith(secondStandpunkt: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GradeCopyWith<$Res>? get finalYearGrade {
    if (_value.finalYearGrade == null) {
      return null;
    }

    return $GradeCopyWith<$Res>(_value.finalYearGrade!, (value) {
      return _then(_value.copyWith(finalYearGrade: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GradeCopyWith<$Res>? get internalTest {
    if (_value.internalTest == null) {
      return null;
    }

    return $GradeCopyWith<$Res>(_value.internalTest!, (value) {
      return _then(_value.copyWith(internalTest: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GradeCopyWith<$Res>? get yearGrade {
    if (_value.yearGrade == null) {
      return null;
    }

    return $GradeCopyWith<$Res>(_value.yearGrade!, (value) {
      return _then(_value.copyWith(yearGrade: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GradeCopyWith<$Res>? get examGrade {
    if (_value.examGrade == null) {
      return null;
    }

    return $GradeCopyWith<$Res>(_value.examGrade!, (value) {
      return _then(_value.copyWith(examGrade: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GradeRowImplCopyWith<$Res>
    implements $GradeRowCopyWith<$Res> {
  factory _$$GradeRowImplCopyWith(
          _$GradeRowImpl value, $Res Function(_$GradeRowImpl) then) =
      __$$GradeRowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Team team,
      Subject subject,
      Grade? firstStandpunkt,
      Grade? secondStandpunkt,
      Grade? finalYearGrade,
      Grade? internalTest,
      Grade? yearGrade,
      Grade? examGrade});

  @override
  $TeamCopyWith<$Res> get team;
  @override
  $SubjectCopyWith<$Res> get subject;
  @override
  $GradeCopyWith<$Res>? get firstStandpunkt;
  @override
  $GradeCopyWith<$Res>? get secondStandpunkt;
  @override
  $GradeCopyWith<$Res>? get finalYearGrade;
  @override
  $GradeCopyWith<$Res>? get internalTest;
  @override
  $GradeCopyWith<$Res>? get yearGrade;
  @override
  $GradeCopyWith<$Res>? get examGrade;
}

/// @nodoc
class __$$GradeRowImplCopyWithImpl<$Res>
    extends _$GradeRowCopyWithImpl<$Res, _$GradeRowImpl>
    implements _$$GradeRowImplCopyWith<$Res> {
  __$$GradeRowImplCopyWithImpl(
      _$GradeRowImpl _value, $Res Function(_$GradeRowImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? subject = null,
    Object? firstStandpunkt = freezed,
    Object? secondStandpunkt = freezed,
    Object? finalYearGrade = freezed,
    Object? internalTest = freezed,
    Object? yearGrade = freezed,
    Object? examGrade = freezed,
  }) {
    return _then(_$GradeRowImpl(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Subject,
      firstStandpunkt: freezed == firstStandpunkt
          ? _value.firstStandpunkt
          : firstStandpunkt // ignore: cast_nullable_to_non_nullable
              as Grade?,
      secondStandpunkt: freezed == secondStandpunkt
          ? _value.secondStandpunkt
          : secondStandpunkt // ignore: cast_nullable_to_non_nullable
              as Grade?,
      finalYearGrade: freezed == finalYearGrade
          ? _value.finalYearGrade
          : finalYearGrade // ignore: cast_nullable_to_non_nullable
              as Grade?,
      internalTest: freezed == internalTest
          ? _value.internalTest
          : internalTest // ignore: cast_nullable_to_non_nullable
              as Grade?,
      yearGrade: freezed == yearGrade
          ? _value.yearGrade
          : yearGrade // ignore: cast_nullable_to_non_nullable
              as Grade?,
      examGrade: freezed == examGrade
          ? _value.examGrade
          : examGrade // ignore: cast_nullable_to_non_nullable
              as Grade?,
    ));
  }
}

/// @nodoc

class _$GradeRowImpl implements _GradeRow {
  _$GradeRowImpl(
      {required this.team,
      required this.subject,
      this.firstStandpunkt,
      this.secondStandpunkt,
      this.finalYearGrade,
      this.internalTest,
      this.yearGrade,
      this.examGrade});

  @override
  final Team team;
  @override
  final Subject subject;
  @override
  final Grade? firstStandpunkt;
  @override
  final Grade? secondStandpunkt;
  @override
  final Grade? finalYearGrade;
  @override
  final Grade? internalTest;
  @override
  final Grade? yearGrade;
  @override
  final Grade? examGrade;

  @override
  String toString() {
    return 'GradeRow(team: $team, subject: $subject, firstStandpunkt: $firstStandpunkt, secondStandpunkt: $secondStandpunkt, finalYearGrade: $finalYearGrade, internalTest: $internalTest, yearGrade: $yearGrade, examGrade: $examGrade)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GradeRowImpl &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.firstStandpunkt, firstStandpunkt) ||
                other.firstStandpunkt == firstStandpunkt) &&
            (identical(other.secondStandpunkt, secondStandpunkt) ||
                other.secondStandpunkt == secondStandpunkt) &&
            (identical(other.finalYearGrade, finalYearGrade) ||
                other.finalYearGrade == finalYearGrade) &&
            (identical(other.internalTest, internalTest) ||
                other.internalTest == internalTest) &&
            (identical(other.yearGrade, yearGrade) ||
                other.yearGrade == yearGrade) &&
            (identical(other.examGrade, examGrade) ||
                other.examGrade == examGrade));
  }

  @override
  int get hashCode => Object.hash(runtimeType, team, subject, firstStandpunkt,
      secondStandpunkt, finalYearGrade, internalTest, yearGrade, examGrade);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GradeRowImplCopyWith<_$GradeRowImpl> get copyWith =>
      __$$GradeRowImplCopyWithImpl<_$GradeRowImpl>(this, _$identity);
}

abstract class _GradeRow implements GradeRow {
  factory _GradeRow(
      {required final Team team,
      required final Subject subject,
      final Grade? firstStandpunkt,
      final Grade? secondStandpunkt,
      final Grade? finalYearGrade,
      final Grade? internalTest,
      final Grade? yearGrade,
      final Grade? examGrade}) = _$GradeRowImpl;

  @override
  Team get team;
  @override
  Subject get subject;
  @override
  Grade? get firstStandpunkt;
  @override
  Grade? get secondStandpunkt;
  @override
  Grade? get finalYearGrade;
  @override
  Grade? get internalTest;
  @override
  Grade? get yearGrade;
  @override
  Grade? get examGrade;
  @override
  @JsonKey(ignore: true)
  _$$GradeRowImplCopyWith<_$GradeRowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
