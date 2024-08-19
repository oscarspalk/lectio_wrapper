// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageRef _$MessageRefFromJson(Map<String, dynamic> json) {
  return _MessageRef.fromJson(json);
}

/// @nodoc
mixin _$MessageRef {
  int get folderId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  DateTime get dateChanged => throw _privateConstructorUsedError;
  String get sender => throw _privateConstructorUsedError;
  String get normalizedId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageRefCopyWith<MessageRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageRefCopyWith<$Res> {
  factory $MessageRefCopyWith(
          MessageRef value, $Res Function(MessageRef) then) =
      _$MessageRefCopyWithImpl<$Res, MessageRef>;
  @useResult
  $Res call(
      {int folderId,
      String id,
      String topic,
      DateTime dateChanged,
      String sender,
      String normalizedId});
}

/// @nodoc
class _$MessageRefCopyWithImpl<$Res, $Val extends MessageRef>
    implements $MessageRefCopyWith<$Res> {
  _$MessageRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderId = null,
    Object? id = null,
    Object? topic = null,
    Object? dateChanged = null,
    Object? sender = null,
    Object? normalizedId = null,
  }) {
    return _then(_value.copyWith(
      folderId: null == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      dateChanged: null == dateChanged
          ? _value.dateChanged
          : dateChanged // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      normalizedId: null == normalizedId
          ? _value.normalizedId
          : normalizedId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageRefImplCopyWith<$Res>
    implements $MessageRefCopyWith<$Res> {
  factory _$$MessageRefImplCopyWith(
          _$MessageRefImpl value, $Res Function(_$MessageRefImpl) then) =
      __$$MessageRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int folderId,
      String id,
      String topic,
      DateTime dateChanged,
      String sender,
      String normalizedId});
}

/// @nodoc
class __$$MessageRefImplCopyWithImpl<$Res>
    extends _$MessageRefCopyWithImpl<$Res, _$MessageRefImpl>
    implements _$$MessageRefImplCopyWith<$Res> {
  __$$MessageRefImplCopyWithImpl(
      _$MessageRefImpl _value, $Res Function(_$MessageRefImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderId = null,
    Object? id = null,
    Object? topic = null,
    Object? dateChanged = null,
    Object? sender = null,
    Object? normalizedId = null,
  }) {
    return _then(_$MessageRefImpl(
      folderId: null == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      dateChanged: null == dateChanged
          ? _value.dateChanged
          : dateChanged // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      normalizedId: null == normalizedId
          ? _value.normalizedId
          : normalizedId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageRefImpl implements _MessageRef {
  _$MessageRefImpl(
      {required this.folderId,
      required this.id,
      required this.topic,
      required this.dateChanged,
      required this.sender,
      required this.normalizedId});

  factory _$MessageRefImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageRefImplFromJson(json);

  @override
  final int folderId;
  @override
  final String id;
  @override
  final String topic;
  @override
  final DateTime dateChanged;
  @override
  final String sender;
  @override
  final String normalizedId;

  @override
  String toString() {
    return 'MessageRef(folderId: $folderId, id: $id, topic: $topic, dateChanged: $dateChanged, sender: $sender, normalizedId: $normalizedId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageRefImpl &&
            (identical(other.folderId, folderId) ||
                other.folderId == folderId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.dateChanged, dateChanged) ||
                other.dateChanged == dateChanged) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.normalizedId, normalizedId) ||
                other.normalizedId == normalizedId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, folderId, id, topic, dateChanged, sender, normalizedId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageRefImplCopyWith<_$MessageRefImpl> get copyWith =>
      __$$MessageRefImplCopyWithImpl<_$MessageRefImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageRefImplToJson(
      this,
    );
  }
}

abstract class _MessageRef implements MessageRef {
  factory _MessageRef(
      {required final int folderId,
      required final String id,
      required final String topic,
      required final DateTime dateChanged,
      required final String sender,
      required final String normalizedId}) = _$MessageRefImpl;

  factory _MessageRef.fromJson(Map<String, dynamic> json) =
      _$MessageRefImpl.fromJson;

  @override
  int get folderId;
  @override
  String get id;
  @override
  String get topic;
  @override
  DateTime get dateChanged;
  @override
  String get sender;
  @override
  String get normalizedId;
  @override
  @JsonKey(ignore: true)
  _$$MessageRefImplCopyWith<_$MessageRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
