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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  AbsenceType get type => throw _privateConstructorUsedError;
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
      AbsenceType type,
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
    Object? type = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AbsenceType,
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
abstract class _$$AbsenceCauseEntryImplCopyWith<$Res>
    implements $AbsenceCauseEntryCopyWith<$Res> {
  factory _$$AbsenceCauseEntryImplCopyWith(_$AbsenceCauseEntryImpl value,
          $Res Function(_$AbsenceCauseEntryImpl) then) =
      __$$AbsenceCauseEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      double absence,
      AbsenceCauses? cause,
      String expandedCause,
      String note,
      DateTime registered,
      AbsenceType type,
      CalendarEvent module});

  @override
  $CalendarEventCopyWith<$Res> get module;
}

/// @nodoc
class __$$AbsenceCauseEntryImplCopyWithImpl<$Res>
    extends _$AbsenceCauseEntryCopyWithImpl<$Res, _$AbsenceCauseEntryImpl>
    implements _$$AbsenceCauseEntryImplCopyWith<$Res> {
  __$$AbsenceCauseEntryImplCopyWithImpl(_$AbsenceCauseEntryImpl _value,
      $Res Function(_$AbsenceCauseEntryImpl) _then)
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
    Object? type = null,
    Object? module = null,
  }) {
    return _then(_$AbsenceCauseEntryImpl(
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AbsenceType,
      module: null == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as CalendarEvent,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbsenceCauseEntryImpl implements _AbsenceCauseEntry {
  _$AbsenceCauseEntryImpl(
      {required this.id,
      required this.absence,
      this.cause,
      required this.expandedCause,
      required this.note,
      required this.registered,
      required this.type,
      required this.module});

  factory _$AbsenceCauseEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbsenceCauseEntryImplFromJson(json);

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
  final AbsenceType type;
  @override
  final CalendarEvent module;

  @override
  String toString() {
    return 'AbsenceCauseEntry(id: $id, absence: $absence, cause: $cause, expandedCause: $expandedCause, note: $note, registered: $registered, type: $type, module: $module)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbsenceCauseEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.absence, absence) || other.absence == absence) &&
            (identical(other.cause, cause) || other.cause == cause) &&
            (identical(other.expandedCause, expandedCause) ||
                other.expandedCause == expandedCause) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.registered, registered) ||
                other.registered == registered) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.module, module) || other.module == module));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, absence, cause,
      expandedCause, note, registered, type, module);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbsenceCauseEntryImplCopyWith<_$AbsenceCauseEntryImpl> get copyWith =>
      __$$AbsenceCauseEntryImplCopyWithImpl<_$AbsenceCauseEntryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbsenceCauseEntryImplToJson(
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
      required final AbsenceType type,
      required final CalendarEvent module}) = _$AbsenceCauseEntryImpl;

  factory _AbsenceCauseEntry.fromJson(Map<String, dynamic> json) =
      _$AbsenceCauseEntryImpl.fromJson;

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
  AbsenceType get type;
  @override
  CalendarEvent get module;
  @override
  @JsonKey(ignore: true)
  _$$AbsenceCauseEntryImplCopyWith<_$AbsenceCauseEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
