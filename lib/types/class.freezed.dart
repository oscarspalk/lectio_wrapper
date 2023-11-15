// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Class {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Student> get students => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClassCopyWith<Class> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassCopyWith<$Res> {
  factory $ClassCopyWith(Class value, $Res Function(Class) then) =
      _$ClassCopyWithImpl<$Res, Class>;
  @useResult
  $Res call({String id, String name, List<Student> students});
}

/// @nodoc
class _$ClassCopyWithImpl<$Res, $Val extends Class>
    implements $ClassCopyWith<$Res> {
  _$ClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? students = null,
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
      students: null == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClassCopyWith<$Res> implements $ClassCopyWith<$Res> {
  factory _$$_ClassCopyWith(_$_Class value, $Res Function(_$_Class) then) =
      __$$_ClassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<Student> students});
}

/// @nodoc
class __$$_ClassCopyWithImpl<$Res> extends _$ClassCopyWithImpl<$Res, _$_Class>
    implements _$$_ClassCopyWith<$Res> {
  __$$_ClassCopyWithImpl(_$_Class _value, $Res Function(_$_Class) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? students = null,
  }) {
    return _then(_$_Class(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      students: null == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ));
  }
}

/// @nodoc

class _$_Class implements _Class {
  _$_Class(
      {required this.id,
      required this.name,
      required final List<Student> students})
      : _students = students;

  @override
  final String id;
  @override
  final String name;
  final List<Student> _students;
  @override
  List<Student> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  String toString() {
    return 'Class(id: $id, name: $name, students: $students)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Class &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassCopyWith<_$_Class> get copyWith =>
      __$$_ClassCopyWithImpl<_$_Class>(this, _$identity);
}

abstract class _Class implements Class {
  factory _Class(
      {required final String id,
      required final String name,
      required final List<Student> students}) = _$_Class;

  @override
  String get id;
  @override
  String get name;
  @override
  List<Student> get students;
  @override
  @JsonKey(ignore: true)
  _$$_ClassCopyWith<_$_Class> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClassRef {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClassRefCopyWith<ClassRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassRefCopyWith<$Res> {
  factory $ClassRefCopyWith(ClassRef value, $Res Function(ClassRef) then) =
      _$ClassRefCopyWithImpl<$Res, ClassRef>;
  @useResult
  $Res call({String name, String id});
}

/// @nodoc
class _$ClassRefCopyWithImpl<$Res, $Val extends ClassRef>
    implements $ClassRefCopyWith<$Res> {
  _$ClassRefCopyWithImpl(this._value, this._then);

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
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClassRefCopyWith<$Res> implements $ClassRefCopyWith<$Res> {
  factory _$$_ClassRefCopyWith(
          _$_ClassRef value, $Res Function(_$_ClassRef) then) =
      __$$_ClassRefCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id});
}

/// @nodoc
class __$$_ClassRefCopyWithImpl<$Res>
    extends _$ClassRefCopyWithImpl<$Res, _$_ClassRef>
    implements _$$_ClassRefCopyWith<$Res> {
  __$$_ClassRefCopyWithImpl(
      _$_ClassRef _value, $Res Function(_$_ClassRef) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$_ClassRef(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ClassRef implements _ClassRef {
  _$_ClassRef({required this.name, required this.id});

  @override
  final String name;
  @override
  final String id;

  @override
  String toString() {
    return 'ClassRef(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassRef &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassRefCopyWith<_$_ClassRef> get copyWith =>
      __$$_ClassRefCopyWithImpl<_$_ClassRef>(this, _$identity);
}

abstract class _ClassRef implements ClassRef {
  factory _ClassRef({required final String name, required final String id}) =
      _$_ClassRef;

  @override
  String get name;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_ClassRefCopyWith<_$_ClassRef> get copyWith =>
      throw _privateConstructorUsedError;
}
