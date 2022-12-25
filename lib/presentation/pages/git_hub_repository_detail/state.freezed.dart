// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GitHubRepositoryState {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get startCount => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  OwnerState get owner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GitHubRepositoryStateCopyWith<GitHubRepositoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubRepositoryStateCopyWith<$Res> {
  factory $GitHubRepositoryStateCopyWith(GitHubRepositoryState value,
          $Res Function(GitHubRepositoryState) then) =
      _$GitHubRepositoryStateCopyWithImpl<$Res, GitHubRepositoryState>;
  @useResult
  $Res call(
      {String name,
      String description,
      int startCount,
      String language,
      OwnerState owner});

  $OwnerStateCopyWith<$Res> get owner;
}

/// @nodoc
class _$GitHubRepositoryStateCopyWithImpl<$Res,
        $Val extends GitHubRepositoryState>
    implements $GitHubRepositoryStateCopyWith<$Res> {
  _$GitHubRepositoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? startCount = null,
    Object? language = null,
    Object? owner = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startCount: null == startCount
          ? _value.startCount
          : startCount // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerStateCopyWith<$Res> get owner {
    return $OwnerStateCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GitHubRepositoryStateCopyWith<$Res>
    implements $GitHubRepositoryStateCopyWith<$Res> {
  factory _$$_GitHubRepositoryStateCopyWith(_$_GitHubRepositoryState value,
          $Res Function(_$_GitHubRepositoryState) then) =
      __$$_GitHubRepositoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      int startCount,
      String language,
      OwnerState owner});

  @override
  $OwnerStateCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_GitHubRepositoryStateCopyWithImpl<$Res>
    extends _$GitHubRepositoryStateCopyWithImpl<$Res, _$_GitHubRepositoryState>
    implements _$$_GitHubRepositoryStateCopyWith<$Res> {
  __$$_GitHubRepositoryStateCopyWithImpl(_$_GitHubRepositoryState _value,
      $Res Function(_$_GitHubRepositoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? startCount = null,
    Object? language = null,
    Object? owner = null,
  }) {
    return _then(_$_GitHubRepositoryState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startCount: null == startCount
          ? _value.startCount
          : startCount // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerState,
    ));
  }
}

/// @nodoc

class _$_GitHubRepositoryState implements _GitHubRepositoryState {
  _$_GitHubRepositoryState(
      {required this.name,
      required this.description,
      required this.startCount,
      required this.language,
      required this.owner});

  @override
  final String name;
  @override
  final String description;
  @override
  final int startCount;
  @override
  final String language;
  @override
  final OwnerState owner;

  @override
  String toString() {
    return 'GitHubRepositoryState(name: $name, description: $description, startCount: $startCount, language: $language, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GitHubRepositoryState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startCount, startCount) ||
                other.startCount == startCount) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, startCount, language, owner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GitHubRepositoryStateCopyWith<_$_GitHubRepositoryState> get copyWith =>
      __$$_GitHubRepositoryStateCopyWithImpl<_$_GitHubRepositoryState>(
          this, _$identity);
}

abstract class _GitHubRepositoryState implements GitHubRepositoryState {
  factory _GitHubRepositoryState(
      {required final String name,
      required final String description,
      required final int startCount,
      required final String language,
      required final OwnerState owner}) = _$_GitHubRepositoryState;

  @override
  String get name;
  @override
  String get description;
  @override
  int get startCount;
  @override
  String get language;
  @override
  OwnerState get owner;
  @override
  @JsonKey(ignore: true)
  _$$_GitHubRepositoryStateCopyWith<_$_GitHubRepositoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OwnerState {
  String get name => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OwnerStateCopyWith<OwnerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerStateCopyWith<$Res> {
  factory $OwnerStateCopyWith(
          OwnerState value, $Res Function(OwnerState) then) =
      _$OwnerStateCopyWithImpl<$Res, OwnerState>;
  @useResult
  $Res call({String name, String avatarUrl});
}

/// @nodoc
class _$OwnerStateCopyWithImpl<$Res, $Val extends OwnerState>
    implements $OwnerStateCopyWith<$Res> {
  _$OwnerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarUrl = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OwnerStateCopyWith<$Res>
    implements $OwnerStateCopyWith<$Res> {
  factory _$$_OwnerStateCopyWith(
          _$_OwnerState value, $Res Function(_$_OwnerState) then) =
      __$$_OwnerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String avatarUrl});
}

/// @nodoc
class __$$_OwnerStateCopyWithImpl<$Res>
    extends _$OwnerStateCopyWithImpl<$Res, _$_OwnerState>
    implements _$$_OwnerStateCopyWith<$Res> {
  __$$_OwnerStateCopyWithImpl(
      _$_OwnerState _value, $Res Function(_$_OwnerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarUrl = null,
  }) {
    return _then(_$_OwnerState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OwnerState implements _OwnerState {
  _$_OwnerState({required this.name, required this.avatarUrl});

  @override
  final String name;
  @override
  final String avatarUrl;

  @override
  String toString() {
    return 'OwnerState(name: $name, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OwnerState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OwnerStateCopyWith<_$_OwnerState> get copyWith =>
      __$$_OwnerStateCopyWithImpl<_$_OwnerState>(this, _$identity);
}

abstract class _OwnerState implements OwnerState {
  factory _OwnerState(
      {required final String name,
      required final String avatarUrl}) = _$_OwnerState;

  @override
  String get name;
  @override
  String get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$_OwnerStateCopyWith<_$_OwnerState> get copyWith =>
      throw _privateConstructorUsedError;
}
