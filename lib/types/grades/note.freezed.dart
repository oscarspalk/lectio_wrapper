// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GradeNote {
  DateTime get registered => throw _privateConstructorUsedError;
  Team get team => throw _privateConstructorUsedError;
  Subject get subject => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  String get gradeType => throw _privateConstructorUsedError;
  int? get grade => throw _privateConstructorUsedError;
  String get teacherInitials => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GradeNoteCopyWith<GradeNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GradeNoteCopyWith<$Res> {
  factory $GradeNoteCopyWith(GradeNote value, $Res Function(GradeNote) then) =
      _$GradeNoteCopyWithImpl<$Res, GradeNote>;
  @useResult
  $Res call(
      {DateTime registered,
      Team team,
      Subject subject,
      String note,
      String gradeType,
      int? grade,
      String teacherInitials});

  $TeamCopyWith<$Res> get team;
  $SubjectCopyWith<$Res> get subject;
}

/// @nodoc
class _$GradeNoteCopyWithImpl<$Res, $Val extends GradeNote>
    implements $GradeNoteCopyWith<$Res> {
  _$GradeNoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registered = null,
    Object? team = null,
    Object? subject = null,
    Object? note = null,
    Object? gradeType = null,
    Object? grade = freezed,
    Object? teacherInitials = null,
  }) {
    return _then(_value.copyWith(
      registered: null == registered
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as DateTime,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Subject,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      gradeType: null == gradeType
          ? _value.gradeType
          : gradeType // ignore: cast_nullable_to_non_nullable
              as String,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int?,
      teacherInitials: null == teacherInitials
          ? _value.teacherInitials
          : teacherInitials // ignore: cast_nullable_to_non_nullable
              as String,
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
}

/// @nodoc
abstract class _$$_GradeNoteCopyWith<$Res> implements $GradeNoteCopyWith<$Res> {
  factory _$$_GradeNoteCopyWith(
          _$_GradeNote value, $Res Function(_$_GradeNote) then) =
      __$$_GradeNoteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime registered,
      Team team,
      Subject subject,
      String note,
      String gradeType,
      int? grade,
      String teacherInitials});

  @override
  $TeamCopyWith<$Res> get team;
  @override
  $SubjectCopyWith<$Res> get subject;
}

/// @nodoc
class __$$_GradeNoteCopyWithImpl<$Res>
    extends _$GradeNoteCopyWithImpl<$Res, _$_GradeNote>
    implements _$$_GradeNoteCopyWith<$Res> {
  __$$_GradeNoteCopyWithImpl(
      _$_GradeNote _value, $Res Function(_$_GradeNote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registered = null,
    Object? team = null,
    Object? subject = null,
    Object? note = null,
    Object? gradeType = null,
    Object? grade = freezed,
    Object? teacherInitials = null,
  }) {
    return _then(_$_GradeNote(
      registered: null == registered
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as DateTime,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Subject,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      gradeType: null == gradeType
          ? _value.gradeType
          : gradeType // ignore: cast_nullable_to_non_nullable
              as String,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int?,
      teacherInitials: null == teacherInitials
          ? _value.teacherInitials
          : teacherInitials // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GradeNote implements _GradeNote {
  _$_GradeNote(
      {required this.registered,
      required this.team,
      required this.subject,
      required this.note,
      required this.gradeType,
      this.grade,
      required this.teacherInitials});

  @override
  final DateTime registered;
  @override
  final Team team;
  @override
  final Subject subject;
  @override
  final String note;
  @override
  final String gradeType;
  @override
  final int? grade;
  @override
  final String teacherInitials;

  @override
  String toString() {
    return 'GradeNote(registered: $registered, team: $team, subject: $subject, note: $note, gradeType: $gradeType, grade: $grade, teacherInitials: $teacherInitials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GradeNote &&
            (identical(other.registered, registered) ||
                other.registered == registered) &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.gradeType, gradeType) ||
                other.gradeType == gradeType) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.teacherInitials, teacherInitials) ||
                other.teacherInitials == teacherInitials));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registered, team, subject, note,
      gradeType, grade, teacherInitials);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GradeNoteCopyWith<_$_GradeNote> get copyWith =>
      __$$_GradeNoteCopyWithImpl<_$_GradeNote>(this, _$identity);
}

abstract class _GradeNote implements GradeNote {
  factory _GradeNote(
      {required final DateTime registered,
      required final Team team,
      required final Subject subject,
      required final String note,
      required final String gradeType,
      final int? grade,
      required final String teacherInitials}) = _$_GradeNote;

  @override
  DateTime get registered;
  @override
  Team get team;
  @override
  Subject get subject;
  @override
  String get note;
  @override
  String get gradeType;
  @override
  int? get grade;
  @override
  String get teacherInitials;
  @override
  @JsonKey(ignore: true)
  _$$_GradeNoteCopyWith<_$_GradeNote> get copyWith =>
      throw _privateConstructorUsedError;
}
