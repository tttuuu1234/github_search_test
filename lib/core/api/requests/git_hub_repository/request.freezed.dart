// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GitHubRepositoryRequest _$GitHubRepositoryRequestFromJson(
    Map<String, dynamic> json) {
  return _GitHubRepositoryRequest.fromJson(json);
}

/// @nodoc
mixin _$GitHubRepositoryRequest {
  @JsonKey(name: 'owner')
  String get ownerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'repo')
  int get repoName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubRepositoryRequestCopyWith<GitHubRepositoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubRepositoryRequestCopyWith<$Res> {
  factory $GitHubRepositoryRequestCopyWith(GitHubRepositoryRequest value,
          $Res Function(GitHubRepositoryRequest) then) =
      _$GitHubRepositoryRequestCopyWithImpl<$Res, GitHubRepositoryRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'owner') String ownerName,
      @JsonKey(name: 'repo') int repoName});
}

/// @nodoc
class _$GitHubRepositoryRequestCopyWithImpl<$Res,
        $Val extends GitHubRepositoryRequest>
    implements $GitHubRepositoryRequestCopyWith<$Res> {
  _$GitHubRepositoryRequestCopyWithImpl(this._value, this._then);

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
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GitHubRepositoryRequestCopyWith<$Res>
    implements $GitHubRepositoryRequestCopyWith<$Res> {
  factory _$$_GitHubRepositoryRequestCopyWith(_$_GitHubRepositoryRequest value,
          $Res Function(_$_GitHubRepositoryRequest) then) =
      __$$_GitHubRepositoryRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'owner') String ownerName,
      @JsonKey(name: 'repo') int repoName});
}

/// @nodoc
class __$$_GitHubRepositoryRequestCopyWithImpl<$Res>
    extends _$GitHubRepositoryRequestCopyWithImpl<$Res,
        _$_GitHubRepositoryRequest>
    implements _$$_GitHubRepositoryRequestCopyWith<$Res> {
  __$$_GitHubRepositoryRequestCopyWithImpl(_$_GitHubRepositoryRequest _value,
      $Res Function(_$_GitHubRepositoryRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerName = null,
    Object? repoName = null,
  }) {
    return _then(_$_GitHubRepositoryRequest(
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      repoName: null == repoName
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GitHubRepositoryRequest implements _GitHubRepositoryRequest {
  _$_GitHubRepositoryRequest(
      {@JsonKey(name: 'owner') required this.ownerName,
      @JsonKey(name: 'repo') required this.repoName});

  factory _$_GitHubRepositoryRequest.fromJson(Map<String, dynamic> json) =>
      _$$_GitHubRepositoryRequestFromJson(json);

  @override
  @JsonKey(name: 'owner')
  final String ownerName;
  @override
  @JsonKey(name: 'repo')
  final int repoName;

  @override
  String toString() {
    return 'GitHubRepositoryRequest(ownerName: $ownerName, repoName: $repoName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GitHubRepositoryRequest &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.repoName, repoName) ||
                other.repoName == repoName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ownerName, repoName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GitHubRepositoryRequestCopyWith<_$_GitHubRepositoryRequest>
      get copyWith =>
          __$$_GitHubRepositoryRequestCopyWithImpl<_$_GitHubRepositoryRequest>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GitHubRepositoryRequestToJson(
      this,
    );
  }
}

abstract class _GitHubRepositoryRequest implements GitHubRepositoryRequest {
  factory _GitHubRepositoryRequest(
          {@JsonKey(name: 'owner') required final String ownerName,
          @JsonKey(name: 'repo') required final int repoName}) =
      _$_GitHubRepositoryRequest;

  factory _GitHubRepositoryRequest.fromJson(Map<String, dynamic> json) =
      _$_GitHubRepositoryRequest.fromJson;

  @override
  @JsonKey(name: 'owner')
  String get ownerName;
  @override
  @JsonKey(name: 'repo')
  int get repoName;
  @override
  @JsonKey(ignore: true)
  _$$_GitHubRepositoryRequestCopyWith<_$_GitHubRepositoryRequest>
      get copyWith => throw _privateConstructorUsedError;
}
