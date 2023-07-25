// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gym.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Gym {
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GymCopyWith<Gym> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GymCopyWith<$Res> {
  factory $GymCopyWith(Gym value, $Res Function(Gym) then) =
      _$GymCopyWithImpl<$Res, Gym>;
  @useResult
  $Res call({String name, int id});
}

/// @nodoc
class _$GymCopyWithImpl<$Res, $Val extends Gym> implements $GymCopyWith<$Res> {
  _$GymCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GymCopyWith<$Res> implements $GymCopyWith<$Res> {
  factory _$$_GymCopyWith(_$_Gym value, $Res Function(_$_Gym) then) =
      __$$_GymCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int id});
}

/// @nodoc
class __$$_GymCopyWithImpl<$Res> extends _$GymCopyWithImpl<$Res, _$_Gym>
    implements _$$_GymCopyWith<$Res> {
  __$$_GymCopyWithImpl(_$_Gym _value, $Res Function(_$_Gym) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$_Gym(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Gym implements _Gym {
  _$_Gym({required this.name, required this.id});

  @override
  final String name;
  @override
  final int id;

  @override
  String toString() {
    return 'Gym(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Gym &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GymCopyWith<_$_Gym> get copyWith =>
      __$$_GymCopyWithImpl<_$_Gym>(this, _$identity);
}

abstract class _Gym implements Gym {
  factory _Gym({required final String name, required final int id}) = _$_Gym;

  @override
  String get name;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_GymCopyWith<_$_Gym> get copyWith => throw _privateConstructorUsedError;
}
