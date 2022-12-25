// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Result<T> {
  ResultStatus get status => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultCopyWith<T, Result<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res, Result<T>>;
  @useResult
  $Res call({ResultStatus status, String msg, T? data});
}

/// @nodoc
class _$ResultCopyWithImpl<T, $Res, $Val extends Result<T>>
    implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResultStatus,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<T, $Res> implements $ResultCopyWith<T, $Res> {
  factory _$$_ResultCopyWith(
          _$_Result<T> value, $Res Function(_$_Result<T>) then) =
      __$$_ResultCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({ResultStatus status, String msg, T? data});
}

/// @nodoc
class __$$_ResultCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$_Result<T>>
    implements _$$_ResultCopyWith<T, $Res> {
  __$$_ResultCopyWithImpl(
      _$_Result<T> _value, $Res Function(_$_Result<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = null,
    Object? data = freezed,
  }) {
    return _then(_$_Result<T>(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResultStatus,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_Result<T> extends _Result<T> {
  const _$_Result({required this.status, required this.msg, required this.data})
      : super._();

  @override
  final ResultStatus status;
  @override
  final String msg;
  @override
  final T? data;

  @override
  String toString() {
    return 'Result<$T>(status: $status, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, msg, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<T, _$_Result<T>> get copyWith =>
      __$$_ResultCopyWithImpl<T, _$_Result<T>>(this, _$identity);
}

abstract class _Result<T> extends Result<T> {
  const factory _Result(
      {required final ResultStatus status,
      required final String msg,
      required final T? data}) = _$_Result<T>;
  const _Result._() : super._();

  @override
  ResultStatus get status;
  @override
  String get msg;
  @override
  T? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<T, _$_Result<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
