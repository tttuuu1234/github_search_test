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

GitHubRepositoryModel _$GitHubRepositoryModelFromJson(
    Map<String, dynamic> json) {
  return _GitHubRepositoryModel.fromJson(json);
}

/// @nodoc
mixin _$GitHubRepositoryModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int? get startCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner')
  OwnerModel get owner => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'stargazers_count') int? startCount,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'owner') OwnerModel owner});

  $OwnerModelCopyWith<$Res> get owner;
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
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? startCount = freezed,
    Object? language = freezed,
    Object? owner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startCount: freezed == startCount
          ? _value.startCount
          : startCount // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerModelCopyWith<$Res> get owner {
    return $OwnerModelCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
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
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'stargazers_count') int? startCount,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'owner') OwnerModel owner});

  @override
  $OwnerModelCopyWith<$Res> get owner;
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
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? startCount = freezed,
    Object? language = freezed,
    Object? owner = null,
  }) {
    return _then(_$_GitHubRepositoryModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startCount: freezed == startCount
          ? _value.startCount
          : startCount // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GitHubRepositoryModel implements _GitHubRepositoryModel {
  _$_GitHubRepositoryModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'stargazers_count') required this.startCount,
      @JsonKey(name: 'language') required this.language,
      @JsonKey(name: 'owner') required this.owner});

  factory _$_GitHubRepositoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_GitHubRepositoryModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'stargazers_count')
  final int? startCount;
  @override
  @JsonKey(name: 'language')
  final String? language;
  @override
  @JsonKey(name: 'owner')
  final OwnerModel owner;

  @override
  String toString() {
    return 'GitHubRepositoryModel(id: $id, name: $name, description: $description, startCount: $startCount, language: $language, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GitHubRepositoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startCount, startCount) ||
                other.startCount == startCount) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, startCount, language, owner);

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
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'description') required final String? description,
          @JsonKey(name: 'stargazers_count') required final int? startCount,
          @JsonKey(name: 'language') required final String? language,
          @JsonKey(name: 'owner') required final OwnerModel owner}) =
      _$_GitHubRepositoryModel;

  factory _GitHubRepositoryModel.fromJson(Map<String, dynamic> json) =
      _$_GitHubRepositoryModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'stargazers_count')
  int? get startCount;
  @override
  @JsonKey(name: 'language')
  String? get language;
  @override
  @JsonKey(name: 'owner')
  OwnerModel get owner;
  @override
  @JsonKey(ignore: true)
  _$$_GitHubRepositoryModelCopyWith<_$_GitHubRepositoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

OwnerModel _$OwnerModelFromJson(Map<String, dynamic> json) {
  return _OwnerModel.fromJson(json);
}

/// @nodoc
mixin _$OwnerModel {
  @JsonKey(name: 'login')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'avater_url')
  String? get avaterUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerModelCopyWith<OwnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerModelCopyWith<$Res> {
  factory $OwnerModelCopyWith(
          OwnerModel value, $Res Function(OwnerModel) then) =
      _$OwnerModelCopyWithImpl<$Res, OwnerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'login') String name,
      @JsonKey(name: 'avater_url') String? avaterUrl});
}

/// @nodoc
class _$OwnerModelCopyWithImpl<$Res, $Val extends OwnerModel>
    implements $OwnerModelCopyWith<$Res> {
  _$OwnerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avaterUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avaterUrl: freezed == avaterUrl
          ? _value.avaterUrl
          : avaterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OwnerModelCopyWith<$Res>
    implements $OwnerModelCopyWith<$Res> {
  factory _$$_OwnerModelCopyWith(
          _$_OwnerModel value, $Res Function(_$_OwnerModel) then) =
      __$$_OwnerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'login') String name,
      @JsonKey(name: 'avater_url') String? avaterUrl});
}

/// @nodoc
class __$$_OwnerModelCopyWithImpl<$Res>
    extends _$OwnerModelCopyWithImpl<$Res, _$_OwnerModel>
    implements _$$_OwnerModelCopyWith<$Res> {
  __$$_OwnerModelCopyWithImpl(
      _$_OwnerModel _value, $Res Function(_$_OwnerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avaterUrl = freezed,
  }) {
    return _then(_$_OwnerModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avaterUrl: freezed == avaterUrl
          ? _value.avaterUrl
          : avaterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OwnerModel implements _OwnerModel {
  _$_OwnerModel(
      {@JsonKey(name: 'login') required this.name,
      @JsonKey(name: 'avater_url') required this.avaterUrl});

  factory _$_OwnerModel.fromJson(Map<String, dynamic> json) =>
      _$$_OwnerModelFromJson(json);

  @override
  @JsonKey(name: 'login')
  final String name;
  @override
  @JsonKey(name: 'avater_url')
  final String? avaterUrl;

  @override
  String toString() {
    return 'OwnerModel(name: $name, avaterUrl: $avaterUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OwnerModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avaterUrl, avaterUrl) ||
                other.avaterUrl == avaterUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, avaterUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OwnerModelCopyWith<_$_OwnerModel> get copyWith =>
      __$$_OwnerModelCopyWithImpl<_$_OwnerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OwnerModelToJson(
      this,
    );
  }
}

abstract class _OwnerModel implements OwnerModel {
  factory _OwnerModel(
          {@JsonKey(name: 'login') required final String name,
          @JsonKey(name: 'avater_url') required final String? avaterUrl}) =
      _$_OwnerModel;

  factory _OwnerModel.fromJson(Map<String, dynamic> json) =
      _$_OwnerModel.fromJson;

  @override
  @JsonKey(name: 'login')
  String get name;
  @override
  @JsonKey(name: 'avater_url')
  String? get avaterUrl;
  @override
  @JsonKey(ignore: true)
  _$$_OwnerModelCopyWith<_$_OwnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
