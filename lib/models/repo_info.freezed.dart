// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepoInfo {
  String get name => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get defaultBranch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoInfoCopyWith<RepoInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoInfoCopyWith<$Res> {
  factory $RepoInfoCopyWith(RepoInfo value, $Res Function(RepoInfo) then) =
      _$RepoInfoCopyWithImpl<$Res, RepoInfo>;
  @useResult
  $Res call({String name, String fullName, String defaultBranch});
}

/// @nodoc
class _$RepoInfoCopyWithImpl<$Res, $Val extends RepoInfo>
    implements $RepoInfoCopyWith<$Res> {
  _$RepoInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fullName = null,
    Object? defaultBranch = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      defaultBranch: null == defaultBranch
          ? _value.defaultBranch
          : defaultBranch // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RepoInfoCopyWith<$Res> implements $RepoInfoCopyWith<$Res> {
  factory _$$_RepoInfoCopyWith(
          _$_RepoInfo value, $Res Function(_$_RepoInfo) then) =
      __$$_RepoInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String fullName, String defaultBranch});
}

/// @nodoc
class __$$_RepoInfoCopyWithImpl<$Res>
    extends _$RepoInfoCopyWithImpl<$Res, _$_RepoInfo>
    implements _$$_RepoInfoCopyWith<$Res> {
  __$$_RepoInfoCopyWithImpl(
      _$_RepoInfo _value, $Res Function(_$_RepoInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fullName = null,
    Object? defaultBranch = null,
  }) {
    return _then(_$_RepoInfo(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      defaultBranch: null == defaultBranch
          ? _value.defaultBranch
          : defaultBranch // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RepoInfo extends _RepoInfo {
  const _$_RepoInfo(
      {required this.name, required this.fullName, required this.defaultBranch})
      : super._();

  @override
  final String name;
  @override
  final String fullName;
  @override
  final String defaultBranch;

  @override
  String toString() {
    return 'RepoInfo(name: $name, fullName: $fullName, defaultBranch: $defaultBranch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepoInfo &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.defaultBranch, defaultBranch) ||
                other.defaultBranch == defaultBranch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, fullName, defaultBranch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepoInfoCopyWith<_$_RepoInfo> get copyWith =>
      __$$_RepoInfoCopyWithImpl<_$_RepoInfo>(this, _$identity);
}

abstract class _RepoInfo extends RepoInfo {
  const factory _RepoInfo(
      {required final String name,
      required final String fullName,
      required final String defaultBranch}) = _$_RepoInfo;
  const _RepoInfo._() : super._();

  @override
  String get name;
  @override
  String get fullName;
  @override
  String get defaultBranch;
  @override
  @JsonKey(ignore: true)
  _$$_RepoInfoCopyWith<_$_RepoInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
