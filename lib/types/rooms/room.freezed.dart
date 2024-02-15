// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Room {
  String get id => throw _privateConstructorUsedError;
  String get short => throw _privateConstructorUsedError;
  bool get inUse => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomCopyWith<Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res, Room>;
  @useResult
  $Res call({String id, String short, bool inUse, String name});
}

/// @nodoc
class _$RoomCopyWithImpl<$Res, $Val extends Room>
    implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? short = null,
    Object? inUse = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      short: null == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
      inUse: null == inUse
          ? _value.inUse
          : inUse // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomImplCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$$RoomImplCopyWith(
          _$RoomImpl value, $Res Function(_$RoomImpl) then) =
      __$$RoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String short, bool inUse, String name});
}

/// @nodoc
class __$$RoomImplCopyWithImpl<$Res>
    extends _$RoomCopyWithImpl<$Res, _$RoomImpl>
    implements _$$RoomImplCopyWith<$Res> {
  __$$RoomImplCopyWithImpl(_$RoomImpl _value, $Res Function(_$RoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? short = null,
    Object? inUse = null,
    Object? name = null,
  }) {
    return _then(_$RoomImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      short: null == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
      inUse: null == inUse
          ? _value.inUse
          : inUse // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RoomImpl implements _Room {
  _$RoomImpl(
      {required this.id,
      required this.short,
      required this.inUse,
      required this.name});

  @override
  final String id;
  @override
  final String short;
  @override
  final bool inUse;
  @override
  final String name;

  @override
  String toString() {
    return 'Room(id: $id, short: $short, inUse: $inUse, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.short, short) || other.short == short) &&
            (identical(other.inUse, inUse) || other.inUse == inUse) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, short, inUse, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomImplCopyWith<_$RoomImpl> get copyWith =>
      __$$RoomImplCopyWithImpl<_$RoomImpl>(this, _$identity);
}

abstract class _Room implements Room {
  factory _Room(
      {required final String id,
      required final String short,
      required final bool inUse,
      required final String name}) = _$RoomImpl;

  @override
  String get id;
  @override
  String get short;
  @override
  bool get inUse;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$RoomImplCopyWith<_$RoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomAvailability {
  String get short => throw _privateConstructorUsedError;
  bool get inUse => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomAvailabilityCopyWith<RoomAvailability> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomAvailabilityCopyWith<$Res> {
  factory $RoomAvailabilityCopyWith(
          RoomAvailability value, $Res Function(RoomAvailability) then) =
      _$RoomAvailabilityCopyWithImpl<$Res, RoomAvailability>;
  @useResult
  $Res call({String short, bool inUse, String name});
}

/// @nodoc
class _$RoomAvailabilityCopyWithImpl<$Res, $Val extends RoomAvailability>
    implements $RoomAvailabilityCopyWith<$Res> {
  _$RoomAvailabilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? short = null,
    Object? inUse = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      short: null == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
      inUse: null == inUse
          ? _value.inUse
          : inUse // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomAvailabilityImplCopyWith<$Res>
    implements $RoomAvailabilityCopyWith<$Res> {
  factory _$$RoomAvailabilityImplCopyWith(_$RoomAvailabilityImpl value,
          $Res Function(_$RoomAvailabilityImpl) then) =
      __$$RoomAvailabilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String short, bool inUse, String name});
}

/// @nodoc
class __$$RoomAvailabilityImplCopyWithImpl<$Res>
    extends _$RoomAvailabilityCopyWithImpl<$Res, _$RoomAvailabilityImpl>
    implements _$$RoomAvailabilityImplCopyWith<$Res> {
  __$$RoomAvailabilityImplCopyWithImpl(_$RoomAvailabilityImpl _value,
      $Res Function(_$RoomAvailabilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? short = null,
    Object? inUse = null,
    Object? name = null,
  }) {
    return _then(_$RoomAvailabilityImpl(
      short: null == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
      inUse: null == inUse
          ? _value.inUse
          : inUse // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RoomAvailabilityImpl implements _RoomAvailability {
  _$RoomAvailabilityImpl(
      {required this.short, required this.inUse, required this.name});

  @override
  final String short;
  @override
  final bool inUse;
  @override
  final String name;

  @override
  String toString() {
    return 'RoomAvailability(short: $short, inUse: $inUse, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomAvailabilityImpl &&
            (identical(other.short, short) || other.short == short) &&
            (identical(other.inUse, inUse) || other.inUse == inUse) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, short, inUse, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomAvailabilityImplCopyWith<_$RoomAvailabilityImpl> get copyWith =>
      __$$RoomAvailabilityImplCopyWithImpl<_$RoomAvailabilityImpl>(
          this, _$identity);
}

abstract class _RoomAvailability implements RoomAvailability {
  factory _RoomAvailability(
      {required final String short,
      required final bool inUse,
      required final String name}) = _$RoomAvailabilityImpl;

  @override
  String get short;
  @override
  bool get inUse;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$RoomAvailabilityImplCopyWith<_$RoomAvailabilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
