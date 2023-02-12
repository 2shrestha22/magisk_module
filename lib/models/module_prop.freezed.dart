// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_prop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModuleProp _$ModulePropFromJson(Map<String, dynamic> json) {
  return _ModuleProp.fromJson(json);
}

/// @nodoc
mixin _$ModuleProp {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get versionCode => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModulePropCopyWith<ModuleProp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModulePropCopyWith<$Res> {
  factory $ModulePropCopyWith(
          ModuleProp value, $Res Function(ModuleProp) then) =
      _$ModulePropCopyWithImpl<$Res, ModuleProp>;
  @useResult
  $Res call(
      {String id,
      String name,
      String version,
      String versionCode,
      String author,
      String description});
}

/// @nodoc
class _$ModulePropCopyWithImpl<$Res, $Val extends ModuleProp>
    implements $ModulePropCopyWith<$Res> {
  _$ModulePropCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? version = null,
    Object? versionCode = null,
    Object? author = null,
    Object? description = null,
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
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      versionCode: null == versionCode
          ? _value.versionCode
          : versionCode // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModulePropCopyWith<$Res>
    implements $ModulePropCopyWith<$Res> {
  factory _$$_ModulePropCopyWith(
          _$_ModuleProp value, $Res Function(_$_ModuleProp) then) =
      __$$_ModulePropCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String version,
      String versionCode,
      String author,
      String description});
}

/// @nodoc
class __$$_ModulePropCopyWithImpl<$Res>
    extends _$ModulePropCopyWithImpl<$Res, _$_ModuleProp>
    implements _$$_ModulePropCopyWith<$Res> {
  __$$_ModulePropCopyWithImpl(
      _$_ModuleProp _value, $Res Function(_$_ModuleProp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? version = null,
    Object? versionCode = null,
    Object? author = null,
    Object? description = null,
  }) {
    return _then(_$_ModuleProp(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      versionCode: null == versionCode
          ? _value.versionCode
          : versionCode // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModuleProp implements _ModuleProp {
  const _$_ModuleProp(
      {required this.id,
      required this.name,
      required this.version,
      required this.versionCode,
      required this.author,
      required this.description});

  factory _$_ModuleProp.fromJson(Map<String, dynamic> json) =>
      _$$_ModulePropFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String version;
  @override
  final String versionCode;
  @override
  final String author;
  @override
  final String description;

  @override
  String toString() {
    return 'ModuleProp(id: $id, name: $name, version: $version, versionCode: $versionCode, author: $author, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModuleProp &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.versionCode, versionCode) ||
                other.versionCode == versionCode) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, version, versionCode, author, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModulePropCopyWith<_$_ModuleProp> get copyWith =>
      __$$_ModulePropCopyWithImpl<_$_ModuleProp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModulePropToJson(
      this,
    );
  }
}

abstract class _ModuleProp implements ModuleProp {
  const factory _ModuleProp(
      {required final String id,
      required final String name,
      required final String version,
      required final String versionCode,
      required final String author,
      required final String description}) = _$_ModuleProp;

  factory _ModuleProp.fromJson(Map<String, dynamic> json) =
      _$_ModuleProp.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get version;
  @override
  String get versionCode;
  @override
  String get author;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_ModulePropCopyWith<_$_ModuleProp> get copyWith =>
      throw _privateConstructorUsedError;
}
