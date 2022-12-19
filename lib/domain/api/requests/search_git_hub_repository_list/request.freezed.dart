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

SearchGitHubRepositoryListRequest _$SearchGitHubRepositoryListRequestFromJson(
    Map<String, dynamic> json) {
  return _SearchGitHubRepositoryListRequest.fromJson(json);
}

/// @nodoc
mixin _$SearchGitHubRepositoryListRequest {
  @JsonKey(name: 'q')
  String get keyword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchGitHubRepositoryListRequestCopyWith<SearchGitHubRepositoryListRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchGitHubRepositoryListRequestCopyWith<$Res> {
  factory $SearchGitHubRepositoryListRequestCopyWith(
          SearchGitHubRepositoryListRequest value,
          $Res Function(SearchGitHubRepositoryListRequest) then) =
      _$SearchGitHubRepositoryListRequestCopyWithImpl<$Res,
          SearchGitHubRepositoryListRequest>;
  @useResult
  $Res call({@JsonKey(name: 'q') String keyword});
}

/// @nodoc
class _$SearchGitHubRepositoryListRequestCopyWithImpl<$Res,
        $Val extends SearchGitHubRepositoryListRequest>
    implements $SearchGitHubRepositoryListRequestCopyWith<$Res> {
  _$SearchGitHubRepositoryListRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_value.copyWith(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchGitHubRepositoryListRequestCopyWith<$Res>
    implements $SearchGitHubRepositoryListRequestCopyWith<$Res> {
  factory _$$_SearchGitHubRepositoryListRequestCopyWith(
          _$_SearchGitHubRepositoryListRequest value,
          $Res Function(_$_SearchGitHubRepositoryListRequest) then) =
      __$$_SearchGitHubRepositoryListRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'q') String keyword});
}

/// @nodoc
class __$$_SearchGitHubRepositoryListRequestCopyWithImpl<$Res>
    extends _$SearchGitHubRepositoryListRequestCopyWithImpl<$Res,
        _$_SearchGitHubRepositoryListRequest>
    implements _$$_SearchGitHubRepositoryListRequestCopyWith<$Res> {
  __$$_SearchGitHubRepositoryListRequestCopyWithImpl(
      _$_SearchGitHubRepositoryListRequest _value,
      $Res Function(_$_SearchGitHubRepositoryListRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_$_SearchGitHubRepositoryListRequest(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchGitHubRepositoryListRequest
    implements _SearchGitHubRepositoryListRequest {
  _$_SearchGitHubRepositoryListRequest(
      {@JsonKey(name: 'q') required this.keyword});

  factory _$_SearchGitHubRepositoryListRequest.fromJson(
          Map<String, dynamic> json) =>
      _$$_SearchGitHubRepositoryListRequestFromJson(json);

  @override
  @JsonKey(name: 'q')
  final String keyword;

  @override
  String toString() {
    return 'SearchGitHubRepositoryListRequest(keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchGitHubRepositoryListRequest &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchGitHubRepositoryListRequestCopyWith<
          _$_SearchGitHubRepositoryListRequest>
      get copyWith => __$$_SearchGitHubRepositoryListRequestCopyWithImpl<
          _$_SearchGitHubRepositoryListRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchGitHubRepositoryListRequestToJson(
      this,
    );
  }
}

abstract class _SearchGitHubRepositoryListRequest
    implements SearchGitHubRepositoryListRequest {
  factory _SearchGitHubRepositoryListRequest(
          {@JsonKey(name: 'q') required final String keyword}) =
      _$_SearchGitHubRepositoryListRequest;

  factory _SearchGitHubRepositoryListRequest.fromJson(
          Map<String, dynamic> json) =
      _$_SearchGitHubRepositoryListRequest.fromJson;

  @override
  @JsonKey(name: 'q')
  String get keyword;
  @override
  @JsonKey(ignore: true)
  _$$_SearchGitHubRepositoryListRequestCopyWith<
          _$_SearchGitHubRepositoryListRequest>
      get copyWith => throw _privateConstructorUsedError;
}
