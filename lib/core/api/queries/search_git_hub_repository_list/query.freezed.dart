// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchGitHubRepositoryListQuery _$SearchGitHubRepositoryListQueryFromJson(
    Map<String, dynamic> json) {
  return _SearchGitHubRepositoryListQuery.fromJson(json);
}

/// @nodoc
mixin _$SearchGitHubRepositoryListQuery {
  @JsonKey(name: 'q')
  String get keyword => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchGitHubRepositoryListQueryCopyWith<SearchGitHubRepositoryListQuery>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchGitHubRepositoryListQueryCopyWith<$Res> {
  factory $SearchGitHubRepositoryListQueryCopyWith(
          SearchGitHubRepositoryListQuery value,
          $Res Function(SearchGitHubRepositoryListQuery) then) =
      _$SearchGitHubRepositoryListQueryCopyWithImpl<$Res,
          SearchGitHubRepositoryListQuery>;
  @useResult
  $Res call(
      {@JsonKey(name: 'q') String keyword, @JsonKey(name: 'page') int page});
}

/// @nodoc
class _$SearchGitHubRepositoryListQueryCopyWithImpl<$Res,
        $Val extends SearchGitHubRepositoryListQuery>
    implements $SearchGitHubRepositoryListQueryCopyWith<$Res> {
  _$SearchGitHubRepositoryListQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchGitHubRepositoryListQueryCopyWith<$Res>
    implements $SearchGitHubRepositoryListQueryCopyWith<$Res> {
  factory _$$_SearchGitHubRepositoryListQueryCopyWith(
          _$_SearchGitHubRepositoryListQuery value,
          $Res Function(_$_SearchGitHubRepositoryListQuery) then) =
      __$$_SearchGitHubRepositoryListQueryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'q') String keyword, @JsonKey(name: 'page') int page});
}

/// @nodoc
class __$$_SearchGitHubRepositoryListQueryCopyWithImpl<$Res>
    extends _$SearchGitHubRepositoryListQueryCopyWithImpl<$Res,
        _$_SearchGitHubRepositoryListQuery>
    implements _$$_SearchGitHubRepositoryListQueryCopyWith<$Res> {
  __$$_SearchGitHubRepositoryListQueryCopyWithImpl(
      _$_SearchGitHubRepositoryListQuery _value,
      $Res Function(_$_SearchGitHubRepositoryListQuery) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? page = null,
  }) {
    return _then(_$_SearchGitHubRepositoryListQuery(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchGitHubRepositoryListQuery
    implements _SearchGitHubRepositoryListQuery {
  _$_SearchGitHubRepositoryListQuery(
      {@JsonKey(name: 'q') required this.keyword,
      @JsonKey(name: 'page') required this.page});

  factory _$_SearchGitHubRepositoryListQuery.fromJson(
          Map<String, dynamic> json) =>
      _$$_SearchGitHubRepositoryListQueryFromJson(json);

  @override
  @JsonKey(name: 'q')
  final String keyword;
  @override
  @JsonKey(name: 'page')
  final int page;

  @override
  String toString() {
    return 'SearchGitHubRepositoryListQuery(keyword: $keyword, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchGitHubRepositoryListQuery &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, keyword, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchGitHubRepositoryListQueryCopyWith<
          _$_SearchGitHubRepositoryListQuery>
      get copyWith => __$$_SearchGitHubRepositoryListQueryCopyWithImpl<
          _$_SearchGitHubRepositoryListQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchGitHubRepositoryListQueryToJson(
      this,
    );
  }
}

abstract class _SearchGitHubRepositoryListQuery
    implements SearchGitHubRepositoryListQuery {
  factory _SearchGitHubRepositoryListQuery(
          {@JsonKey(name: 'q') required final String keyword,
          @JsonKey(name: 'page') required final int page}) =
      _$_SearchGitHubRepositoryListQuery;

  factory _SearchGitHubRepositoryListQuery.fromJson(Map<String, dynamic> json) =
      _$_SearchGitHubRepositoryListQuery.fromJson;

  @override
  @JsonKey(name: 'q')
  String get keyword;
  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_SearchGitHubRepositoryListQueryCopyWith<
          _$_SearchGitHubRepositoryListQuery>
      get copyWith => throw _privateConstructorUsedError;
}
