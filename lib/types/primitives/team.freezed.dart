// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Team {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res, Team>;
  @useResult
  $Res call({String name, String id, String displayName});
}

/// @nodoc
class _$TeamCopyWithImpl<$Res, $Val extends Team>
    implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TeamCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$$_TeamCopyWith(_$_Team value, $Res Function(_$_Team) then) =
      __$$_TeamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id, String displayName});
}

/// @nodoc
class __$$_TeamCopyWithImpl<$Res> extends _$TeamCopyWithImpl<$Res, _$_Team>
    implements _$$_TeamCopyWith<$Res> {
  __$$_TeamCopyWithImpl(_$_Team _value, $Res Function(_$_Team) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? displayName = null,
  }) {
    return _then(_$_Team(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Team implements _Team {
  _$_Team({required this.name, required this.id, required this.displayName});

  @override
  final String name;
  @override
  final String id;
  @override
  final String displayName;

  @override
  String toString() {
    return 'Team(name: $name, id: $id, displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Team &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, id, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TeamCopyWith<_$_Team> get copyWith =>
      __$$_TeamCopyWithImpl<_$_Team>(this, _$identity);
}

abstract class _Team implements Team {
  factory _Team(
      {required final String name,
      required final String id,
      required final String displayName}) = _$_Team;

  @override
  String get name;
  @override
  String get id;
  @override
  String get displayName;
  @override
  @JsonKey(ignore: true)
  _$$_TeamCopyWith<_$_Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ModuleStatistics {
  double get deviation => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get normal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModuleStatisticsCopyWith<ModuleStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleStatisticsCopyWith<$Res> {
  factory $ModuleStatisticsCopyWith(
          ModuleStatistics value, $Res Function(ModuleStatistics) then) =
      _$ModuleStatisticsCopyWithImpl<$Res, ModuleStatistics>;
  @useResult
  $Res call({double deviation, int total, int normal});
}

/// @nodoc
class _$ModuleStatisticsCopyWithImpl<$Res, $Val extends ModuleStatistics>
    implements $ModuleStatisticsCopyWith<$Res> {
  _$ModuleStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviation = null,
    Object? total = null,
    Object? normal = null,
  }) {
    return _then(_value.copyWith(
      deviation: null == deviation
          ? _value.deviation
          : deviation // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      normal: null == normal
          ? _value.normal
          : normal // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModuleStatisticsCopyWith<$Res>
    implements $ModuleStatisticsCopyWith<$Res> {
  factory _$$_ModuleStatisticsCopyWith(
          _$_ModuleStatistics value, $Res Function(_$_ModuleStatistics) then) =
      __$$_ModuleStatisticsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double deviation, int total, int normal});
}

/// @nodoc
class __$$_ModuleStatisticsCopyWithImpl<$Res>
    extends _$ModuleStatisticsCopyWithImpl<$Res, _$_ModuleStatistics>
    implements _$$_ModuleStatisticsCopyWith<$Res> {
  __$$_ModuleStatisticsCopyWithImpl(
      _$_ModuleStatistics _value, $Res Function(_$_ModuleStatistics) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviation = null,
    Object? total = null,
    Object? normal = null,
  }) {
    return _then(_$_ModuleStatistics(
      deviation: null == deviation
          ? _value.deviation
          : deviation // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      normal: null == normal
          ? _value.normal
          : normal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ModuleStatistics implements _ModuleStatistics {
  _$_ModuleStatistics(
      {required this.deviation, required this.total, required this.normal});

  @override
  final double deviation;
  @override
  final int total;
  @override
  final int normal;

  @override
  String toString() {
    return 'ModuleStatistics(deviation: $deviation, total: $total, normal: $normal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModuleStatistics &&
            (identical(other.deviation, deviation) ||
                other.deviation == deviation) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.normal, normal) || other.normal == normal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deviation, total, normal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModuleStatisticsCopyWith<_$_ModuleStatistics> get copyWith =>
      __$$_ModuleStatisticsCopyWithImpl<_$_ModuleStatistics>(this, _$identity);
}

abstract class _ModuleStatistics implements ModuleStatistics {
  factory _ModuleStatistics(
      {required final double deviation,
      required final int total,
      required final int normal}) = _$_ModuleStatistics;

  @override
  double get deviation;
  @override
  int get total;
  @override
  int get normal;
  @override
  @JsonKey(ignore: true)
  _$$_ModuleStatisticsCopyWith<_$_ModuleStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}
