// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchGitHubRepositoryListModel _$SearchGitHubRepositoryListModelFromJson(
    Map<String, dynamic> json) {
  return _SearchGitHubRepositoryListModel.fromJson(json);
}

/// @nodoc
mixin _$SearchGitHubRepositoryListModel {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<GitHubRepositoryModel> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchGitHubRepositoryListModelCopyWith<SearchGitHubRepositoryListModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchGitHubRepositoryListModelCopyWith<$Res> {
  factory $SearchGitHubRepositoryListModelCopyWith(
          SearchGitHubRepositoryListModel value,
          $Res Function(SearchGitHubRepositoryListModel) then) =
      _$SearchGitHubRepositoryListModelCopyWithImpl<$Res,
          SearchGitHubRepositoryListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      @JsonKey(name: 'items') List<GitHubRepositoryModel> list});
}

/// @nodoc
class _$SearchGitHubRepositoryListModelCopyWithImpl<$Res,
        $Val extends SearchGitHubRepositoryListModel>
    implements $SearchGitHubRepositoryListModelCopyWith<$Res> {
  _$SearchGitHubRepositoryListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<GitHubRepositoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchGitHubRepositoryListModelCopyWith<$Res>
    implements $SearchGitHubRepositoryListModelCopyWith<$Res> {
  factory _$$_SearchGitHubRepositoryListModelCopyWith(
          _$_SearchGitHubRepositoryListModel value,
          $Res Function(_$_SearchGitHubRepositoryListModel) then) =
      __$$_SearchGitHubRepositoryListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      @JsonKey(name: 'items') List<GitHubRepositoryModel> list});
}

/// @nodoc
class __$$_SearchGitHubRepositoryListModelCopyWithImpl<$Res>
    extends _$SearchGitHubRepositoryListModelCopyWithImpl<$Res,
        _$_SearchGitHubRepositoryListModel>
    implements _$$_SearchGitHubRepositoryListModelCopyWith<$Res> {
  __$$_SearchGitHubRepositoryListModelCopyWithImpl(
      _$_SearchGitHubRepositoryListModel _value,
      $Res Function(_$_SearchGitHubRepositoryListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? list = null,
  }) {
    return _then(_$_SearchGitHubRepositoryListModel(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<GitHubRepositoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchGitHubRepositoryListModel
    implements _SearchGitHubRepositoryListModel {
  _$_SearchGitHubRepositoryListModel(
      {@JsonKey(name: 'total_count') required this.totalCount,
      @JsonKey(name: 'incomplete_results') required this.incompleteResults,
      @JsonKey(name: 'items') required final List<GitHubRepositoryModel> list})
      : _list = list;

  factory _$_SearchGitHubRepositoryListModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_SearchGitHubRepositoryListModelFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  final bool incompleteResults;
  final List<GitHubRepositoryModel> _list;
  @override
  @JsonKey(name: 'items')
  List<GitHubRepositoryModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'SearchGitHubRepositoryListModel(totalCount: $totalCount, incompleteResults: $incompleteResults, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchGitHubRepositoryListModel &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.incompleteResults, incompleteResults) ||
                other.incompleteResults == incompleteResults) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount, incompleteResults,
      const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchGitHubRepositoryListModelCopyWith<
          _$_SearchGitHubRepositoryListModel>
      get copyWith => __$$_SearchGitHubRepositoryListModelCopyWithImpl<
          _$_SearchGitHubRepositoryListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchGitHubRepositoryListModelToJson(
      this,
    );
  }
}

abstract class _SearchGitHubRepositoryListModel
    implements SearchGitHubRepositoryListModel {
  factory _SearchGitHubRepositoryListModel(
          {@JsonKey(name: 'total_count')
              required final int totalCount,
          @JsonKey(name: 'incomplete_results')
              required final bool incompleteResults,
          @JsonKey(name: 'items')
              required final List<GitHubRepositoryModel> list}) =
      _$_SearchGitHubRepositoryListModel;

  factory _SearchGitHubRepositoryListModel.fromJson(Map<String, dynamic> json) =
      _$_SearchGitHubRepositoryListModel.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults;
  @override
  @JsonKey(name: 'items')
  List<GitHubRepositoryModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$_SearchGitHubRepositoryListModelCopyWith<
          _$_SearchGitHubRepositoryListModel>
      get copyWith => throw _privateConstructorUsedError;
}
