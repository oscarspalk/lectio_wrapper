// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StudyTeamEntry {
  Team get team => throw _privateConstructorUsedError;
  List<StudyPlanRef> get entries => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudyTeamEntryCopyWith<StudyTeamEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyTeamEntryCopyWith<$Res> {
  factory $StudyTeamEntryCopyWith(
          StudyTeamEntry value, $Res Function(StudyTeamEntry) then) =
      _$StudyTeamEntryCopyWithImpl<$Res, StudyTeamEntry>;
  @useResult
  $Res call({Team team, List<StudyPlanRef> entries});

  $TeamCopyWith<$Res> get team;
}

/// @nodoc
class _$StudyTeamEntryCopyWithImpl<$Res, $Val extends StudyTeamEntry>
    implements $StudyTeamEntryCopyWith<$Res> {
  _$StudyTeamEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? entries = null,
  }) {
    return _then(_value.copyWith(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      entries: null == entries
          ? _value.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<StudyPlanRef>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get team {
    return $TeamCopyWith<$Res>(_value.team, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudyTeamEntryImplCopyWith<$Res>
    implements $StudyTeamEntryCopyWith<$Res> {
  factory _$$StudyTeamEntryImplCopyWith(_$StudyTeamEntryImpl value,
          $Res Function(_$StudyTeamEntryImpl) then) =
      __$$StudyTeamEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Team team, List<StudyPlanRef> entries});

  @override
  $TeamCopyWith<$Res> get team;
}

/// @nodoc
class __$$StudyTeamEntryImplCopyWithImpl<$Res>
    extends _$StudyTeamEntryCopyWithImpl<$Res, _$StudyTeamEntryImpl>
    implements _$$StudyTeamEntryImplCopyWith<$Res> {
  __$$StudyTeamEntryImplCopyWithImpl(
      _$StudyTeamEntryImpl _value, $Res Function(_$StudyTeamEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? entries = null,
  }) {
    return _then(_$StudyTeamEntryImpl(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      entries: null == entries
          ? _value._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<StudyPlanRef>,
    ));
  }
}

/// @nodoc

class _$StudyTeamEntryImpl implements _StudyTeamEntry {
  _$StudyTeamEntryImpl(
      {required this.team, required final List<StudyPlanRef> entries})
      : _entries = entries;

  @override
  final Team team;
  final List<StudyPlanRef> _entries;
  @override
  List<StudyPlanRef> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  @override
  String toString() {
    return 'StudyTeamEntry(team: $team, entries: $entries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyTeamEntryImpl &&
            (identical(other.team, team) || other.team == team) &&
            const DeepCollectionEquality().equals(other._entries, _entries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, team, const DeepCollectionEquality().hash(_entries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyTeamEntryImplCopyWith<_$StudyTeamEntryImpl> get copyWith =>
      __$$StudyTeamEntryImplCopyWithImpl<_$StudyTeamEntryImpl>(
          this, _$identity);
}

abstract class _StudyTeamEntry implements StudyTeamEntry {
  factory _StudyTeamEntry(
      {required final Team team,
      required final List<StudyPlanRef> entries}) = _$StudyTeamEntryImpl;

  @override
  Team get team;
  @override
  List<StudyPlanRef> get entries;
  @override
  @JsonKey(ignore: true)
  _$$StudyTeamEntryImplCopyWith<_$StudyTeamEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StudyPlanRef {
  String get title => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudyPlanRefCopyWith<StudyPlanRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyPlanRefCopyWith<$Res> {
  factory $StudyPlanRefCopyWith(
          StudyPlanRef value, $Res Function(StudyPlanRef) then) =
      _$StudyPlanRefCopyWithImpl<$Res, StudyPlanRef>;
  @useResult
  $Res call({String title, DateTime start, DateTime? end, String id});
}

/// @nodoc
class _$StudyPlanRefCopyWithImpl<$Res, $Val extends StudyPlanRef>
    implements $StudyPlanRefCopyWith<$Res> {
  _$StudyPlanRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? start = null,
    Object? end = freezed,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudyPlanRefImplCopyWith<$Res>
    implements $StudyPlanRefCopyWith<$Res> {
  factory _$$StudyPlanRefImplCopyWith(
          _$StudyPlanRefImpl value, $Res Function(_$StudyPlanRefImpl) then) =
      __$$StudyPlanRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, DateTime start, DateTime? end, String id});
}

/// @nodoc
class __$$StudyPlanRefImplCopyWithImpl<$Res>
    extends _$StudyPlanRefCopyWithImpl<$Res, _$StudyPlanRefImpl>
    implements _$$StudyPlanRefImplCopyWith<$Res> {
  __$$StudyPlanRefImplCopyWithImpl(
      _$StudyPlanRefImpl _value, $Res Function(_$StudyPlanRefImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? start = null,
    Object? end = freezed,
    Object? id = null,
  }) {
    return _then(_$StudyPlanRefImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StudyPlanRefImpl implements _StudyPlanRef {
  _$StudyPlanRefImpl(
      {required this.title,
      required this.start,
      required this.end,
      required this.id});

  @override
  final String title;
  @override
  final DateTime start;
  @override
  final DateTime? end;
  @override
  final String id;

  @override
  String toString() {
    return 'StudyPlanRef(title: $title, start: $start, end: $end, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyPlanRefImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, start, end, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyPlanRefImplCopyWith<_$StudyPlanRefImpl> get copyWith =>
      __$$StudyPlanRefImplCopyWithImpl<_$StudyPlanRefImpl>(this, _$identity);
}

abstract class _StudyPlanRef implements StudyPlanRef {
  factory _StudyPlanRef(
      {required final String title,
      required final DateTime start,
      required final DateTime? end,
      required final String id}) = _$StudyPlanRefImpl;

  @override
  String get title;
  @override
  DateTime get start;
  @override
  DateTime? get end;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$StudyPlanRefImplCopyWith<_$StudyPlanRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StudyPlanEntry {
  MetaDataEntry get teacher => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudyPlanEntryCopyWith<StudyPlanEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyPlanEntryCopyWith<$Res> {
  factory $StudyPlanEntryCopyWith(
          StudyPlanEntry value, $Res Function(StudyPlanEntry) then) =
      _$StudyPlanEntryCopyWithImpl<$Res, StudyPlanEntry>;
  @useResult
  $Res call({MetaDataEntry teacher, String description});

  $MetaDataEntryCopyWith<$Res> get teacher;
}

/// @nodoc
class _$StudyPlanEntryCopyWithImpl<$Res, $Val extends StudyPlanEntry>
    implements $StudyPlanEntryCopyWith<$Res> {
  _$StudyPlanEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacher = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as MetaDataEntry,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDataEntryCopyWith<$Res> get teacher {
    return $MetaDataEntryCopyWith<$Res>(_value.teacher, (value) {
      return _then(_value.copyWith(teacher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudyPlanEntryImplCopyWith<$Res>
    implements $StudyPlanEntryCopyWith<$Res> {
  factory _$$StudyPlanEntryImplCopyWith(_$StudyPlanEntryImpl value,
          $Res Function(_$StudyPlanEntryImpl) then) =
      __$$StudyPlanEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MetaDataEntry teacher, String description});

  @override
  $MetaDataEntryCopyWith<$Res> get teacher;
}

/// @nodoc
class __$$StudyPlanEntryImplCopyWithImpl<$Res>
    extends _$StudyPlanEntryCopyWithImpl<$Res, _$StudyPlanEntryImpl>
    implements _$$StudyPlanEntryImplCopyWith<$Res> {
  __$$StudyPlanEntryImplCopyWithImpl(
      _$StudyPlanEntryImpl _value, $Res Function(_$StudyPlanEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacher = null,
    Object? description = null,
  }) {
    return _then(_$StudyPlanEntryImpl(
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as MetaDataEntry,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StudyPlanEntryImpl implements _StudyPlanEntry {
  _$StudyPlanEntryImpl({required this.teacher, required this.description});

  @override
  final MetaDataEntry teacher;
  @override
  final String description;

  @override
  String toString() {
    return 'StudyPlanEntry(teacher: $teacher, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyPlanEntryImpl &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teacher, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyPlanEntryImplCopyWith<_$StudyPlanEntryImpl> get copyWith =>
      __$$StudyPlanEntryImplCopyWithImpl<_$StudyPlanEntryImpl>(
          this, _$identity);
}

abstract class _StudyPlanEntry implements StudyPlanEntry {
  factory _StudyPlanEntry(
      {required final MetaDataEntry teacher,
      required final String description}) = _$StudyPlanEntryImpl;

  @override
  MetaDataEntry get teacher;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$StudyPlanEntryImplCopyWith<_$StudyPlanEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
