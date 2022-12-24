// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GitHubRepositoryDetailParameter {
  String get ownerName => throw _privateConstructorUsedError;
  String get repoName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GitHubRepositoryDetailParameterCopyWith<GitHubRepositoryDetailParameter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubRepositoryDetailParameterCopyWith<$Res> {
  factory $GitHubRepositoryDetailParameterCopyWith(
          GitHubRepositoryDetailParameter value,
          $Res Function(GitHubRepositoryDetailParameter) then) =
      _$GitHubRepositoryDetailParameterCopyWithImpl<$Res,
          GitHubRepositoryDetailParameter>;
  @useResult
  $Res call({String ownerName, String repoName});
}

/// @nodoc
class _$GitHubRepositoryDetailParameterCopyWithImpl<$Res,
        $Val extends GitHubRepositoryDetailParameter>
    implements $GitHubRepositoryDetailParameterCopyWith<$Res> {
  _$GitHubRepositoryDetailParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerName = null,
    Object? repoName = null,
  }) {
    return _then(_value.copyWith(
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      repoName: null == repoName
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GitHubRepositoryParameterCopyWith<$Res>
    implements $GitHubRepositoryDetailParameterCopyWith<$Res> {
  factory _$$_GitHubRepositoryParameterCopyWith(
          _$_GitHubRepositoryParameter value,
          $Res Function(_$_GitHubRepositoryParameter) then) =
      __$$_GitHubRepositoryParameterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ownerName, String repoName});
}

/// @nodoc
class __$$_GitHubRepositoryParameterCopyWithImpl<$Res>
    extends _$GitHubRepositoryDetailParameterCopyWithImpl<$Res,
        _$_GitHubRepositoryParameter>
    implements _$$_GitHubRepositoryParameterCopyWith<$Res> {
  __$$_GitHubRepositoryParameterCopyWithImpl(
      _$_GitHubRepositoryParameter _value,
      $Res Function(_$_GitHubRepositoryParameter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerName = null,
    Object? repoName = null,
  }) {
    return _then(_$_GitHubRepositoryParameter(
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      repoName: null == repoName
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GitHubRepositoryParameter extends _GitHubRepositoryParameter {
  _$_GitHubRepositoryParameter(
      {required this.ownerName, required this.repoName})
      : super._();

  @override
  final String ownerName;
  @override
  final String repoName;

  @override
  String toString() {
    return 'GitHubRepositoryDetailParameter(ownerName: $ownerName, repoName: $repoName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GitHubRepositoryParameter &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.repoName, repoName) ||
                other.repoName == repoName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ownerName, repoName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GitHubRepositoryParameterCopyWith<_$_GitHubRepositoryParameter>
      get copyWith => __$$_GitHubRepositoryParameterCopyWithImpl<
          _$_GitHubRepositoryParameter>(this, _$identity);
}

abstract class _GitHubRepositoryParameter
    extends GitHubRepositoryDetailParameter {
  factory _GitHubRepositoryParameter(
      {required final String ownerName,
      required final String repoName}) = _$_GitHubRepositoryParameter;
  _GitHubRepositoryParameter._() : super._();

  @override
  String get ownerName;
  @override
  String get repoName;
  @override
  @JsonKey(ignore: true)
  _$$_GitHubRepositoryParameterCopyWith<_$_GitHubRepositoryParameter>
      get copyWith => throw _privateConstructorUsedError;
}
