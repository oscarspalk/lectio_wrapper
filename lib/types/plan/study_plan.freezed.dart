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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_StudyTeamEntryCopyWith<$Res>
    implements $StudyTeamEntryCopyWith<$Res> {
  factory _$$_StudyTeamEntryCopyWith(
          _$_StudyTeamEntry value, $Res Function(_$_StudyTeamEntry) then) =
      __$$_StudyTeamEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Team team, List<StudyPlanRef> entries});

  @override
  $TeamCopyWith<$Res> get team;
}

/// @nodoc
class __$$_StudyTeamEntryCopyWithImpl<$Res>
    extends _$StudyTeamEntryCopyWithImpl<$Res, _$_StudyTeamEntry>
    implements _$$_StudyTeamEntryCopyWith<$Res> {
  __$$_StudyTeamEntryCopyWithImpl(
      _$_StudyTeamEntry _value, $Res Function(_$_StudyTeamEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? entries = null,
  }) {
    return _then(_$_StudyTeamEntry(
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

class _$_StudyTeamEntry implements _StudyTeamEntry {
  _$_StudyTeamEntry(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudyTeamEntry &&
            (identical(other.team, team) || other.team == team) &&
            const DeepCollectionEquality().equals(other._entries, _entries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, team, const DeepCollectionEquality().hash(_entries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudyTeamEntryCopyWith<_$_StudyTeamEntry> get copyWith =>
      __$$_StudyTeamEntryCopyWithImpl<_$_StudyTeamEntry>(this, _$identity);
}

abstract class _StudyTeamEntry implements StudyTeamEntry {
  factory _StudyTeamEntry(
      {required final Team team,
      required final List<StudyPlanRef> entries}) = _$_StudyTeamEntry;

  @override
  Team get team;
  @override
  List<StudyPlanRef> get entries;
  @override
  @JsonKey(ignore: true)
  _$$_StudyTeamEntryCopyWith<_$_StudyTeamEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StudyPlanRef {
  String get title => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;
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
  $Res call({String title, DateTime start, DateTime end, String id});
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
    Object? end = null,
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
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudyPlanRefCopyWith<$Res>
    implements $StudyPlanRefCopyWith<$Res> {
  factory _$$_StudyPlanRefCopyWith(
          _$_StudyPlanRef value, $Res Function(_$_StudyPlanRef) then) =
      __$$_StudyPlanRefCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, DateTime start, DateTime end, String id});
}

/// @nodoc
class __$$_StudyPlanRefCopyWithImpl<$Res>
    extends _$StudyPlanRefCopyWithImpl<$Res, _$_StudyPlanRef>
    implements _$$_StudyPlanRefCopyWith<$Res> {
  __$$_StudyPlanRefCopyWithImpl(
      _$_StudyPlanRef _value, $Res Function(_$_StudyPlanRef) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? start = null,
    Object? end = null,
    Object? id = null,
  }) {
    return _then(_$_StudyPlanRef(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StudyPlanRef implements _StudyPlanRef {
  _$_StudyPlanRef(
      {required this.title,
      required this.start,
      required this.end,
      required this.id});

  @override
  final String title;
  @override
  final DateTime start;
  @override
  final DateTime end;
  @override
  final String id;

  @override
  String toString() {
    return 'StudyPlanRef(title: $title, start: $start, end: $end, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudyPlanRef &&
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
  _$$_StudyPlanRefCopyWith<_$_StudyPlanRef> get copyWith =>
      __$$_StudyPlanRefCopyWithImpl<_$_StudyPlanRef>(this, _$identity);
}

abstract class _StudyPlanRef implements StudyPlanRef {
  factory _StudyPlanRef(
      {required final String title,
      required final DateTime start,
      required final DateTime end,
      required final String id}) = _$_StudyPlanRef;

  @override
  String get title;
  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_StudyPlanRefCopyWith<_$_StudyPlanRef> get copyWith =>
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
abstract class _$$_StudyPlanEntryCopyWith<$Res>
    implements $StudyPlanEntryCopyWith<$Res> {
  factory _$$_StudyPlanEntryCopyWith(
          _$_StudyPlanEntry value, $Res Function(_$_StudyPlanEntry) then) =
      __$$_StudyPlanEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MetaDataEntry teacher, String description});

  @override
  $MetaDataEntryCopyWith<$Res> get teacher;
}

/// @nodoc
class __$$_StudyPlanEntryCopyWithImpl<$Res>
    extends _$StudyPlanEntryCopyWithImpl<$Res, _$_StudyPlanEntry>
    implements _$$_StudyPlanEntryCopyWith<$Res> {
  __$$_StudyPlanEntryCopyWithImpl(
      _$_StudyPlanEntry _value, $Res Function(_$_StudyPlanEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacher = null,
    Object? description = null,
  }) {
    return _then(_$_StudyPlanEntry(
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

class _$_StudyPlanEntry implements _StudyPlanEntry {
  _$_StudyPlanEntry({required this.teacher, required this.description});

  @override
  final MetaDataEntry teacher;
  @override
  final String description;

  @override
  String toString() {
    return 'StudyPlanEntry(teacher: $teacher, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudyPlanEntry &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teacher, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudyPlanEntryCopyWith<_$_StudyPlanEntry> get copyWith =>
      __$$_StudyPlanEntryCopyWithImpl<_$_StudyPlanEntry>(this, _$identity);
}

abstract class _StudyPlanEntry implements StudyPlanEntry {
  factory _StudyPlanEntry(
      {required final MetaDataEntry teacher,
      required final String description}) = _$_StudyPlanEntry;

  @override
  MetaDataEntry get teacher;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_StudyPlanEntryCopyWith<_$_StudyPlanEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
