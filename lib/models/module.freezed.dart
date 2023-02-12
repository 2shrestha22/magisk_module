// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Module _$ModuleFromJson(Map<String, dynamic> json) {
  return _Module.fromJson(json);
}

/// @nodoc
mixin _$Module {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'notes_url')
  String get notesUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'prop_url')
  String get propUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'stars', defaultValue: 0)
  int get stars => throw _privateConstructorUsedError;
  @JsonKey(name: 'zip_url')
  String get zipUrl => throw _privateConstructorUsedError;
  @DateTimeEpochConverter()
  @JsonKey(name: 'last_update')
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModuleCopyWith<Module> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleCopyWith<$Res> {
  factory $ModuleCopyWith(Module value, $Res Function(Module) then) =
      _$ModuleCopyWithImpl<$Res, Module>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id')
          String id,
      @JsonKey(name: 'notes_url')
          String notesUrl,
      @JsonKey(name: 'prop_url')
          String propUrl,
      @JsonKey(name: 'stars', defaultValue: 0)
          int stars,
      @JsonKey(name: 'zip_url')
          String zipUrl,
      @DateTimeEpochConverter()
      @JsonKey(name: 'last_update')
          DateTime lastUpdated});
}

/// @nodoc
class _$ModuleCopyWithImpl<$Res, $Val extends Module>
    implements $ModuleCopyWith<$Res> {
  _$ModuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? notesUrl = null,
    Object? propUrl = null,
    Object? stars = null,
    Object? zipUrl = null,
    Object? lastUpdated = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      notesUrl: null == notesUrl
          ? _value.notesUrl
          : notesUrl // ignore: cast_nullable_to_non_nullable
              as String,
      propUrl: null == propUrl
          ? _value.propUrl
          : propUrl // ignore: cast_nullable_to_non_nullable
              as String,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
      zipUrl: null == zipUrl
          ? _value.zipUrl
          : zipUrl // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModuleCopyWith<$Res> implements $ModuleCopyWith<$Res> {
  factory _$$_ModuleCopyWith(_$_Module value, $Res Function(_$_Module) then) =
      __$$_ModuleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id')
          String id,
      @JsonKey(name: 'notes_url')
          String notesUrl,
      @JsonKey(name: 'prop_url')
          String propUrl,
      @JsonKey(name: 'stars', defaultValue: 0)
          int stars,
      @JsonKey(name: 'zip_url')
          String zipUrl,
      @DateTimeEpochConverter()
      @JsonKey(name: 'last_update')
          DateTime lastUpdated});
}

/// @nodoc
class __$$_ModuleCopyWithImpl<$Res>
    extends _$ModuleCopyWithImpl<$Res, _$_Module>
    implements _$$_ModuleCopyWith<$Res> {
  __$$_ModuleCopyWithImpl(_$_Module _value, $Res Function(_$_Module) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? notesUrl = null,
    Object? propUrl = null,
    Object? stars = null,
    Object? zipUrl = null,
    Object? lastUpdated = null,
  }) {
    return _then(_$_Module(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      notesUrl: null == notesUrl
          ? _value.notesUrl
          : notesUrl // ignore: cast_nullable_to_non_nullable
              as String,
      propUrl: null == propUrl
          ? _value.propUrl
          : propUrl // ignore: cast_nullable_to_non_nullable
              as String,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
      zipUrl: null == zipUrl
          ? _value.zipUrl
          : zipUrl // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Module implements _Module {
  const _$_Module(
      {@JsonKey(name: 'id')
          required this.id,
      @JsonKey(name: 'notes_url')
          required this.notesUrl,
      @JsonKey(name: 'prop_url')
          required this.propUrl,
      @JsonKey(name: 'stars', defaultValue: 0)
          required this.stars,
      @JsonKey(name: 'zip_url')
          required this.zipUrl,
      @DateTimeEpochConverter()
      @JsonKey(name: 'last_update')
          required this.lastUpdated});

  factory _$_Module.fromJson(Map<String, dynamic> json) =>
      _$$_ModuleFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'notes_url')
  final String notesUrl;
  @override
  @JsonKey(name: 'prop_url')
  final String propUrl;
  @override
  @JsonKey(name: 'stars', defaultValue: 0)
  final int stars;
  @override
  @JsonKey(name: 'zip_url')
  final String zipUrl;
  @override
  @DateTimeEpochConverter()
  @JsonKey(name: 'last_update')
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'Module(id: $id, notesUrl: $notesUrl, propUrl: $propUrl, stars: $stars, zipUrl: $zipUrl, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Module &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.notesUrl, notesUrl) ||
                other.notesUrl == notesUrl) &&
            (identical(other.propUrl, propUrl) || other.propUrl == propUrl) &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.zipUrl, zipUrl) || other.zipUrl == zipUrl) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, notesUrl, propUrl, stars, zipUrl, lastUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModuleCopyWith<_$_Module> get copyWith =>
      __$$_ModuleCopyWithImpl<_$_Module>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModuleToJson(
      this,
    );
  }
}

abstract class _Module implements Module {
  const factory _Module(
      {@JsonKey(name: 'id')
          required final String id,
      @JsonKey(name: 'notes_url')
          required final String notesUrl,
      @JsonKey(name: 'prop_url')
          required final String propUrl,
      @JsonKey(name: 'stars', defaultValue: 0)
          required final int stars,
      @JsonKey(name: 'zip_url')
          required final String zipUrl,
      @DateTimeEpochConverter()
      @JsonKey(name: 'last_update')
          required final DateTime lastUpdated}) = _$_Module;

  factory _Module.fromJson(Map<String, dynamic> json) = _$_Module.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'notes_url')
  String get notesUrl;
  @override
  @JsonKey(name: 'prop_url')
  String get propUrl;
  @override
  @JsonKey(name: 'stars', defaultValue: 0)
  int get stars;
  @override
  @JsonKey(name: 'zip_url')
  String get zipUrl;
  @override
  @DateTimeEpochConverter()
  @JsonKey(name: 'last_update')
  DateTime get lastUpdated;
  @override
  @JsonKey(ignore: true)
  _$$_ModuleCopyWith<_$_Module> get copyWith =>
      throw _privateConstructorUsedError;
}
