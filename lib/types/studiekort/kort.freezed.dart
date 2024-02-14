// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kort.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Kort {
  String get gymnasium => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get birthday => throw _privateConstructorUsedError;
  DioImage get picture => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KortCopyWith<Kort> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KortCopyWith<$Res> {
  factory $KortCopyWith(Kort value, $Res Function(Kort) then) =
      _$KortCopyWithImpl<$Res, Kort>;
  @useResult
  $Res call(
      {String gymnasium, String name, DateTime birthday, DioImage picture});
}

/// @nodoc
class _$KortCopyWithImpl<$Res, $Val extends Kort>
    implements $KortCopyWith<$Res> {
  _$KortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gymnasium = null,
    Object? name = null,
    Object? birthday = null,
    Object? picture = null,
  }) {
    return _then(_value.copyWith(
      gymnasium: null == gymnasium
          ? _value.gymnasium
          : gymnasium // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as DioImage,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KortImplCopyWith<$Res> implements $KortCopyWith<$Res> {
  factory _$$KortImplCopyWith(
          _$KortImpl value, $Res Function(_$KortImpl) then) =
      __$$KortImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String gymnasium, String name, DateTime birthday, DioImage picture});
}

/// @nodoc
class __$$KortImplCopyWithImpl<$Res>
    extends _$KortCopyWithImpl<$Res, _$KortImpl>
    implements _$$KortImplCopyWith<$Res> {
  __$$KortImplCopyWithImpl(_$KortImpl _value, $Res Function(_$KortImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gymnasium = null,
    Object? name = null,
    Object? birthday = null,
    Object? picture = null,
  }) {
    return _then(_$KortImpl(
      gymnasium: null == gymnasium
          ? _value.gymnasium
          : gymnasium // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as DioImage,
    ));
  }
}

/// @nodoc

class _$KortImpl implements _Kort {
  _$KortImpl(
      {required this.gymnasium,
      required this.name,
      required this.birthday,
      required this.picture});

  @override
  final String gymnasium;
  @override
  final String name;
  @override
  final DateTime birthday;
  @override
  final DioImage picture;

  @override
  String toString() {
    return 'Kort(gymnasium: $gymnasium, name: $name, birthday: $birthday, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KortImpl &&
            (identical(other.gymnasium, gymnasium) ||
                other.gymnasium == gymnasium) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, gymnasium, name, birthday, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KortImplCopyWith<_$KortImpl> get copyWith =>
      __$$KortImplCopyWithImpl<_$KortImpl>(this, _$identity);
}

abstract class _Kort implements Kort {
  factory _Kort(
      {required final String gymnasium,
      required final String name,
      required final DateTime birthday,
      required final DioImage picture}) = _$KortImpl;

  @override
  String get gymnasium;
  @override
  String get name;
  @override
  DateTime get birthday;
  @override
  DioImage get picture;
  @override
  @JsonKey(ignore: true)
  _$$KortImplCopyWith<_$KortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
