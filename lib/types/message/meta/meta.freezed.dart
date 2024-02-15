// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MetaDataEntry _$MetaDataEntryFromJson(Map<String, dynamic> json) {
  return _MetaDataEntry.fromJson(json);
}

/// @nodoc
mixin _$MetaDataEntry {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get classOrInitials => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDataEntryCopyWith<MetaDataEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataEntryCopyWith<$Res> {
  factory $MetaDataEntryCopyWith(
          MetaDataEntry value, $Res Function(MetaDataEntry) then) =
      _$MetaDataEntryCopyWithImpl<$Res, MetaDataEntry>;
  @useResult
  $Res call({String id, String name, String? classOrInitials});
}

/// @nodoc
class _$MetaDataEntryCopyWithImpl<$Res, $Val extends MetaDataEntry>
    implements $MetaDataEntryCopyWith<$Res> {
  _$MetaDataEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? classOrInitials = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      classOrInitials: freezed == classOrInitials
          ? _value.classOrInitials
          : classOrInitials // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaDataEntryImplCopyWith<$Res>
    implements $MetaDataEntryCopyWith<$Res> {
  factory _$$MetaDataEntryImplCopyWith(
          _$MetaDataEntryImpl value, $Res Function(_$MetaDataEntryImpl) then) =
      __$$MetaDataEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String? classOrInitials});
}

/// @nodoc
class __$$MetaDataEntryImplCopyWithImpl<$Res>
    extends _$MetaDataEntryCopyWithImpl<$Res, _$MetaDataEntryImpl>
    implements _$$MetaDataEntryImplCopyWith<$Res> {
  __$$MetaDataEntryImplCopyWithImpl(
      _$MetaDataEntryImpl _value, $Res Function(_$MetaDataEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? classOrInitials = freezed,
  }) {
    return _then(_$MetaDataEntryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      classOrInitials: freezed == classOrInitials
          ? _value.classOrInitials
          : classOrInitials // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaDataEntryImpl implements _MetaDataEntry {
  _$MetaDataEntryImpl(
      {required this.id, required this.name, this.classOrInitials});

  factory _$MetaDataEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaDataEntryImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? classOrInitials;

  @override
  String toString() {
    return 'MetaDataEntry(id: $id, name: $name, classOrInitials: $classOrInitials)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaDataEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.classOrInitials, classOrInitials) ||
                other.classOrInitials == classOrInitials));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, classOrInitials);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaDataEntryImplCopyWith<_$MetaDataEntryImpl> get copyWith =>
      __$$MetaDataEntryImplCopyWithImpl<_$MetaDataEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaDataEntryImplToJson(
      this,
    );
  }
}

abstract class _MetaDataEntry implements MetaDataEntry {
  factory _MetaDataEntry(
      {required final String id,
      required final String name,
      final String? classOrInitials}) = _$MetaDataEntryImpl;

  factory _MetaDataEntry.fromJson(Map<String, dynamic> json) =
      _$MetaDataEntryImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get classOrInitials;
  @override
  @JsonKey(ignore: true)
  _$$MetaDataEntryImplCopyWith<_$MetaDataEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
