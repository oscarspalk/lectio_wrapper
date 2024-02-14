// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homework.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Homework _$HomeworkFromJson(Map<String, dynamic> json) {
  return _Homework.fromJson(json);
}

/// @nodoc
mixin _$Homework {
  DateTime get dato => throw _privateConstructorUsedError;
  @JsonKey(name: "activity", fromJson: eventFromJson, toJson: eventToJson)
  CalendarEvent get activity => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeworkCopyWith<Homework> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeworkCopyWith<$Res> {
  factory $HomeworkCopyWith(Homework value, $Res Function(Homework) then) =
      _$HomeworkCopyWithImpl<$Res, Homework>;
  @useResult
  $Res call(
      {DateTime dato,
      @JsonKey(name: "activity", fromJson: eventFromJson, toJson: eventToJson)
      CalendarEvent activity,
      String note});

  $CalendarEventCopyWith<$Res> get activity;
}

/// @nodoc
class _$HomeworkCopyWithImpl<$Res, $Val extends Homework>
    implements $HomeworkCopyWith<$Res> {
  _$HomeworkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dato = null,
    Object? activity = null,
    Object? note = null,
  }) {
    return _then(_value.copyWith(
      dato: null == dato
          ? _value.dato
          : dato // ignore: cast_nullable_to_non_nullable
              as DateTime,
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as CalendarEvent,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CalendarEventCopyWith<$Res> get activity {
    return $CalendarEventCopyWith<$Res>(_value.activity, (value) {
      return _then(_value.copyWith(activity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeworkImplCopyWith<$Res>
    implements $HomeworkCopyWith<$Res> {
  factory _$$HomeworkImplCopyWith(
          _$HomeworkImpl value, $Res Function(_$HomeworkImpl) then) =
      __$$HomeworkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime dato,
      @JsonKey(name: "activity", fromJson: eventFromJson, toJson: eventToJson)
      CalendarEvent activity,
      String note});

  @override
  $CalendarEventCopyWith<$Res> get activity;
}

/// @nodoc
class __$$HomeworkImplCopyWithImpl<$Res>
    extends _$HomeworkCopyWithImpl<$Res, _$HomeworkImpl>
    implements _$$HomeworkImplCopyWith<$Res> {
  __$$HomeworkImplCopyWithImpl(
      _$HomeworkImpl _value, $Res Function(_$HomeworkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dato = null,
    Object? activity = null,
    Object? note = null,
  }) {
    return _then(_$HomeworkImpl(
      dato: null == dato
          ? _value.dato
          : dato // ignore: cast_nullable_to_non_nullable
              as DateTime,
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as CalendarEvent,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeworkImpl implements _Homework {
  _$HomeworkImpl(
      {required this.dato,
      @JsonKey(name: "activity", fromJson: eventFromJson, toJson: eventToJson)
      required this.activity,
      required this.note});

  factory _$HomeworkImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeworkImplFromJson(json);

  @override
  final DateTime dato;
  @override
  @JsonKey(name: "activity", fromJson: eventFromJson, toJson: eventToJson)
  final CalendarEvent activity;
  @override
  final String note;

  @override
  String toString() {
    return 'Homework(dato: $dato, activity: $activity, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeworkImpl &&
            (identical(other.dato, dato) || other.dato == dato) &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dato, activity, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeworkImplCopyWith<_$HomeworkImpl> get copyWith =>
      __$$HomeworkImplCopyWithImpl<_$HomeworkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeworkImplToJson(
      this,
    );
  }
}

abstract class _Homework implements Homework {
  factory _Homework(
      {required final DateTime dato,
      @JsonKey(name: "activity", fromJson: eventFromJson, toJson: eventToJson)
      required final CalendarEvent activity,
      required final String note}) = _$HomeworkImpl;

  factory _Homework.fromJson(Map<String, dynamic> json) =
      _$HomeworkImpl.fromJson;

  @override
  DateTime get dato;
  @override
  @JsonKey(name: "activity", fromJson: eventFromJson, toJson: eventToJson)
  CalendarEvent get activity;
  @override
  String get note;
  @override
  @JsonKey(ignore: true)
  _$$HomeworkImplCopyWith<_$HomeworkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
