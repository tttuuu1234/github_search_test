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

/// @nodoc
mixin _$GitHubRepositoryListModel {
  List<GitHubRepositoryModel> get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GitHubRepositoryListModelCopyWith<GitHubRepositoryListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubRepositoryListModelCopyWith<$Res> {
  factory $GitHubRepositoryListModelCopyWith(GitHubRepositoryListModel value,
          $Res Function(GitHubRepositoryListModel) then) =
      _$GitHubRepositoryListModelCopyWithImpl<$Res, GitHubRepositoryListModel>;
  @useResult
  $Res call({List<GitHubRepositoryModel> list});
}

/// @nodoc
class _$GitHubRepositoryListModelCopyWithImpl<$Res,
        $Val extends GitHubRepositoryListModel>
    implements $GitHubRepositoryListModelCopyWith<$Res> {
  _$GitHubRepositoryListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<GitHubRepositoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GitHubRepositoryListModelCopyWith<$Res>
    implements $GitHubRepositoryListModelCopyWith<$Res> {
  factory _$$_GitHubRepositoryListModelCopyWith(
          _$_GitHubRepositoryListModel value,
          $Res Function(_$_GitHubRepositoryListModel) then) =
      __$$_GitHubRepositoryListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GitHubRepositoryModel> list});
}

/// @nodoc
class __$$_GitHubRepositoryListModelCopyWithImpl<$Res>
    extends _$GitHubRepositoryListModelCopyWithImpl<$Res,
        _$_GitHubRepositoryListModel>
    implements _$$_GitHubRepositoryListModelCopyWith<$Res> {
  __$$_GitHubRepositoryListModelCopyWithImpl(
      _$_GitHubRepositoryListModel _value,
      $Res Function(_$_GitHubRepositoryListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_GitHubRepositoryListModel(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<GitHubRepositoryModel>,
    ));
  }
}

/// @nodoc

class _$_GitHubRepositoryListModel implements _GitHubRepositoryListModel {
  _$_GitHubRepositoryListModel(
      {required final List<GitHubRepositoryModel> list})
      : _list = list;

  final List<GitHubRepositoryModel> _list;
  @override
  List<GitHubRepositoryModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'GitHubRepositoryListModel(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GitHubRepositoryListModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GitHubRepositoryListModelCopyWith<_$_GitHubRepositoryListModel>
      get copyWith => __$$_GitHubRepositoryListModelCopyWithImpl<
          _$_GitHubRepositoryListModel>(this, _$identity);
}

abstract class _GitHubRepositoryListModel implements GitHubRepositoryListModel {
  factory _GitHubRepositoryListModel(
          {required final List<GitHubRepositoryModel> list}) =
      _$_GitHubRepositoryListModel;

  @override
  List<GitHubRepositoryModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$_GitHubRepositoryListModelCopyWith<_$_GitHubRepositoryListModel>
      get copyWith => throw _privateConstructorUsedError;
}

GitHubRepositoryModel _$GitHubRepositoryModelFromJson(
    Map<String, dynamic> json) {
  return _GitHubRepositoryModel.fromJson(json);
}

/// @nodoc
mixin _$GitHubRepositoryModel {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubRepositoryModelCopyWith<GitHubRepositoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubRepositoryModelCopyWith<$Res> {
  factory $GitHubRepositoryModelCopyWith(GitHubRepositoryModel value,
          $Res Function(GitHubRepositoryModel) then) =
      _$GitHubRepositoryModelCopyWithImpl<$Res, GitHubRepositoryModel>;
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class _$GitHubRepositoryModelCopyWithImpl<$Res,
        $Val extends GitHubRepositoryModel>
    implements $GitHubRepositoryModelCopyWith<$Res> {
  _$GitHubRepositoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GitHubRepositoryModelCopyWith<$Res>
    implements $GitHubRepositoryModelCopyWith<$Res> {
  factory _$$_GitHubRepositoryModelCopyWith(_$_GitHubRepositoryModel value,
          $Res Function(_$_GitHubRepositoryModel) then) =
      __$$_GitHubRepositoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$_GitHubRepositoryModelCopyWithImpl<$Res>
    extends _$GitHubRepositoryModelCopyWithImpl<$Res, _$_GitHubRepositoryModel>
    implements _$$_GitHubRepositoryModelCopyWith<$Res> {
  __$$_GitHubRepositoryModelCopyWithImpl(_$_GitHubRepositoryModel _value,
      $Res Function(_$_GitHubRepositoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_GitHubRepositoryModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GitHubRepositoryModel implements _GitHubRepositoryModel {
  _$_GitHubRepositoryModel({@JsonKey(name: 'name') required this.name});

  factory _$_GitHubRepositoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_GitHubRepositoryModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'GitHubRepositoryModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GitHubRepositoryModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GitHubRepositoryModelCopyWith<_$_GitHubRepositoryModel> get copyWith =>
      __$$_GitHubRepositoryModelCopyWithImpl<_$_GitHubRepositoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GitHubRepositoryModelToJson(
      this,
    );
  }
}

abstract class _GitHubRepositoryModel implements GitHubRepositoryModel {
  factory _GitHubRepositoryModel(
          {@JsonKey(name: 'name') required final String name}) =
      _$_GitHubRepositoryModel;

  factory _GitHubRepositoryModel.fromJson(Map<String, dynamic> json) =
      _$_GitHubRepositoryModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_GitHubRepositoryModelCopyWith<_$_GitHubRepositoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
