// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cause.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AbsenceCauseEntry _$AbsenceCauseEntryFromJson(Map<String, dynamic> json) {
  return _AbsenceCauseEntry.fromJson(json);
}

/// @nodoc
mixin _$AbsenceCauseEntry {
  String get id => throw _privateConstructorUsedError;
  double get absence => throw _privateConstructorUsedError;
  AbsenceCauses? get cause => throw _privateConstructorUsedError;
  String get expandedCause => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  DateTime get registered => throw _privateConstructorUsedError;
  CalendarEvent get module => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbsenceCauseEntryCopyWith<AbsenceCauseEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbsenceCauseEntryCopyWith<$Res> {
  factory $AbsenceCauseEntryCopyWith(
          AbsenceCauseEntry value, $Res Function(AbsenceCauseEntry) then) =
      _$AbsenceCauseEntryCopyWithImpl<$Res, AbsenceCauseEntry>;
  @useResult
  $Res call(
      {String id,
      double absence,
      AbsenceCauses? cause,
      String expandedCause,
      String note,
      DateTime registered,
      CalendarEvent module});

  $CalendarEventCopyWith<$Res> get module;
}

/// @nodoc
class _$AbsenceCauseEntryCopyWithImpl<$Res, $Val extends AbsenceCauseEntry>
    implements $AbsenceCauseEntryCopyWith<$Res> {
  _$AbsenceCauseEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? absence = null,
    Object? cause = freezed,
    Object? expandedCause = null,
    Object? note = null,
    Object? registered = null,
    Object? module = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      absence: null == absence
          ? _value.absence
          : absence // ignore: cast_nullable_to_non_nullable
              as double,
      cause: freezed == cause
          ? _value.cause
          : cause // ignore: cast_nullable_to_non_nullable
              as AbsenceCauses?,
      expandedCause: null == expandedCause
          ? _value.expandedCause
          : expandedCause // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      registered: null == registered
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as DateTime,
      module: null == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as CalendarEvent,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CalendarEventCopyWith<$Res> get module {
    return $CalendarEventCopyWith<$Res>(_value.module, (value) {
      return _then(_value.copyWith(module: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AbsenceCauseEntryCopyWith<$Res>
    implements $AbsenceCauseEntryCopyWith<$Res> {
  factory _$$_AbsenceCauseEntryCopyWith(_$_AbsenceCauseEntry value,
          $Res Function(_$_AbsenceCauseEntry) then) =
      __$$_AbsenceCauseEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      double absence,
      AbsenceCauses? cause,
      String expandedCause,
      String note,
      DateTime registered,
      CalendarEvent module});

  @override
  $CalendarEventCopyWith<$Res> get module;
}

/// @nodoc
class __$$_AbsenceCauseEntryCopyWithImpl<$Res>
    extends _$AbsenceCauseEntryCopyWithImpl<$Res, _$_AbsenceCauseEntry>
    implements _$$_AbsenceCauseEntryCopyWith<$Res> {
  __$$_AbsenceCauseEntryCopyWithImpl(
      _$_AbsenceCauseEntry _value, $Res Function(_$_AbsenceCauseEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? absence = null,
    Object? cause = freezed,
    Object? expandedCause = null,
    Object? note = null,
    Object? registered = null,
    Object? module = null,
  }) {
    return _then(_$_AbsenceCauseEntry(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      absence: null == absence
          ? _value.absence
          : absence // ignore: cast_nullable_to_non_nullable
              as double,
      cause: freezed == cause
          ? _value.cause
          : cause // ignore: cast_nullable_to_non_nullable
              as AbsenceCauses?,
      expandedCause: null == expandedCause
          ? _value.expandedCause
          : expandedCause // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      registered: null == registered
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as DateTime,
      module: null == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as CalendarEvent,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AbsenceCauseEntry implements _AbsenceCauseEntry {
  _$_AbsenceCauseEntry(
      {required this.id,
      required this.absence,
      this.cause,
      required this.expandedCause,
      required this.note,
      required this.registered,
      required this.module});

  factory _$_AbsenceCauseEntry.fromJson(Map<String, dynamic> json) =>
      _$$_AbsenceCauseEntryFromJson(json);

  @override
  final String id;
  @override
  final double absence;
  @override
  final AbsenceCauses? cause;
  @override
  final String expandedCause;
  @override
  final String note;
  @override
  final DateTime registered;
  @override
  final CalendarEvent module;

  @override
  String toString() {
    return 'AbsenceCauseEntry(id: $id, absence: $absence, cause: $cause, expandedCause: $expandedCause, note: $note, registered: $registered, module: $module)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbsenceCauseEntry &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.absence, absence) || other.absence == absence) &&
            (identical(other.cause, cause) || other.cause == cause) &&
            (identical(other.expandedCause, expandedCause) ||
                other.expandedCause == expandedCause) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.registered, registered) ||
                other.registered == registered) &&
            (identical(other.module, module) || other.module == module));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, absence, cause, expandedCause, note, registered, module);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AbsenceCauseEntryCopyWith<_$_AbsenceCauseEntry> get copyWith =>
      __$$_AbsenceCauseEntryCopyWithImpl<_$_AbsenceCauseEntry>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbsenceCauseEntryToJson(
      this,
    );
  }
}

abstract class _AbsenceCauseEntry implements AbsenceCauseEntry {
  factory _AbsenceCauseEntry(
      {required final String id,
      required final double absence,
      final AbsenceCauses? cause,
      required final String expandedCause,
      required final String note,
      required final DateTime registered,
      required final CalendarEvent module}) = _$_AbsenceCauseEntry;

  factory _AbsenceCauseEntry.fromJson(Map<String, dynamic> json) =
      _$_AbsenceCauseEntry.fromJson;

  @override
  String get id;
  @override
  double get absence;
  @override
  AbsenceCauses? get cause;
  @override
  String get expandedCause;
  @override
  String get note;
  @override
  DateTime get registered;
  @override
  CalendarEvent get module;
  @override
  @JsonKey(ignore: true)
  _$$_AbsenceCauseEntryCopyWith<_$_AbsenceCauseEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
