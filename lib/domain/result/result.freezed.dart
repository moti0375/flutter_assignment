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
mixin _$Result<T, R> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(T? data) success,
    required TResult Function(R data) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(T? data)? success,
    TResult? Function(R data)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(T? data)? success,
    TResult Function(R data)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(None<T, R> value) none,
    required TResult Function(Success<T, R> value) success,
    required TResult Function(Failure<T, R> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(None<T, R> value)? none,
    TResult? Function(Success<T, R> value)? success,
    TResult? Function(Failure<T, R> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(None<T, R> value)? none,
    TResult Function(Success<T, R> value)? success,
    TResult Function(Failure<T, R> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, R, $Res> {
  factory $ResultCopyWith(
          Result<T, R> value, $Res Function(Result<T, R>) then) =
      _$ResultCopyWithImpl<T, R, $Res, Result<T, R>>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, R, $Res, $Val extends Result<T, R>>
    implements $ResultCopyWith<T, R, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoneImplCopyWith<T, R, $Res> {
  factory _$$NoneImplCopyWith(
          _$NoneImpl<T, R> value, $Res Function(_$NoneImpl<T, R>) then) =
      __$$NoneImplCopyWithImpl<T, R, $Res>;
}

/// @nodoc
class __$$NoneImplCopyWithImpl<T, R, $Res>
    extends _$ResultCopyWithImpl<T, R, $Res, _$NoneImpl<T, R>>
    implements _$$NoneImplCopyWith<T, R, $Res> {
  __$$NoneImplCopyWithImpl(
      _$NoneImpl<T, R> _value, $Res Function(_$NoneImpl<T, R>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoneImpl<T, R> implements None<T, R> {
  const _$NoneImpl();

  @override
  String toString() {
    return 'Result<$T, $R>.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoneImpl<T, R>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(T? data) success,
    required TResult Function(R data) failure,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(T? data)? success,
    TResult? Function(R data)? failure,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(T? data)? success,
    TResult Function(R data)? failure,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(None<T, R> value) none,
    required TResult Function(Success<T, R> value) success,
    required TResult Function(Failure<T, R> value) failure,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(None<T, R> value)? none,
    TResult? Function(Success<T, R> value)? success,
    TResult? Function(Failure<T, R> value)? failure,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(None<T, R> value)? none,
    TResult Function(Success<T, R> value)? success,
    TResult Function(Failure<T, R> value)? failure,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class None<T, R> implements Result<T, R> {
  const factory None() = _$NoneImpl<T, R>;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, R, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T, R> value, $Res Function(_$SuccessImpl<T, R>) then) =
      __$$SuccessImplCopyWithImpl<T, R, $Res>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, R, $Res>
    extends _$ResultCopyWithImpl<T, R, $Res, _$SuccessImpl<T, R>>
    implements _$$SuccessImplCopyWith<T, R, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T, R> _value, $Res Function(_$SuccessImpl<T, R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessImpl<T, R>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T, R> implements Success<T, R> {
  const _$SuccessImpl(this.data);

  @override
  final T? data;

  @override
  String toString() {
    return 'Result<$T, $R>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T, R> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<T, R, _$SuccessImpl<T, R>> get copyWith =>
      __$$SuccessImplCopyWithImpl<T, R, _$SuccessImpl<T, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(T? data) success,
    required TResult Function(R data) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(T? data)? success,
    TResult? Function(R data)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(T? data)? success,
    TResult Function(R data)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(None<T, R> value) none,
    required TResult Function(Success<T, R> value) success,
    required TResult Function(Failure<T, R> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(None<T, R> value)? none,
    TResult? Function(Success<T, R> value)? success,
    TResult? Function(Failure<T, R> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(None<T, R> value)? none,
    TResult Function(Success<T, R> value)? success,
    TResult Function(Failure<T, R> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T, R> implements Result<T, R> {
  const factory Success(final T? data) = _$SuccessImpl<T, R>;

  T? get data;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<T, R, _$SuccessImpl<T, R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<T, R, $Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl<T, R> value, $Res Function(_$FailureImpl<T, R>) then) =
      __$$FailureImplCopyWithImpl<T, R, $Res>;
  @useResult
  $Res call({R data});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<T, R, $Res>
    extends _$ResultCopyWithImpl<T, R, $Res, _$FailureImpl<T, R>>
    implements _$$FailureImplCopyWith<T, R, $Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl<T, R> _value, $Res Function(_$FailureImpl<T, R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$FailureImpl<T, R>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as R,
    ));
  }
}

/// @nodoc

class _$FailureImpl<T, R> implements Failure<T, R> {
  const _$FailureImpl(this.data);

  @override
  final R data;

  @override
  String toString() {
    return 'Result<$T, $R>.failure(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl<T, R> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<T, R, _$FailureImpl<T, R>> get copyWith =>
      __$$FailureImplCopyWithImpl<T, R, _$FailureImpl<T, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(T? data) success,
    required TResult Function(R data) failure,
  }) {
    return failure(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(T? data)? success,
    TResult? Function(R data)? failure,
  }) {
    return failure?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(T? data)? success,
    TResult Function(R data)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(None<T, R> value) none,
    required TResult Function(Success<T, R> value) success,
    required TResult Function(Failure<T, R> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(None<T, R> value)? none,
    TResult? Function(Success<T, R> value)? success,
    TResult? Function(Failure<T, R> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(None<T, R> value)? none,
    TResult Function(Success<T, R> value)? success,
    TResult Function(Failure<T, R> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<T, R> implements Result<T, R> {
  const factory Failure(final R data) = _$FailureImpl<T, R>;

  R get data;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<T, R, _$FailureImpl<T, R>> get copyWith =>
      throw _privateConstructorUsedError;
}
