// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'loading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoadingState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? content) loading,
    required TResult Function(
            T content, AdditionalLoadingState next, AdditionalLoadingState prev)
        completed,
    required TResult Function(Exception exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? content)? loading,
    TResult Function(T content, AdditionalLoadingState next,
            AdditionalLoadingState prev)?
        completed,
    TResult Function(Exception exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? content)? loading,
    TResult Function(T content, AdditionalLoadingState next,
            AdditionalLoadingState prev)?
        completed,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Completed<T> value) completed,
    required TResult Function(_Error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Completed<T> value)? completed,
    TResult Function(_Error<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Completed<T> value)? completed,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingStateCopyWith<T, $Res> {
  factory $LoadingStateCopyWith(
          LoadingState<T> value, $Res Function(LoadingState<T>) then) =
      _$LoadingStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$LoadingStateCopyWithImpl<T, $Res>
    implements $LoadingStateCopyWith<T, $Res> {
  _$LoadingStateCopyWithImpl(this._value, this._then);

  final LoadingState<T> _value;
  // ignore: unused_field
  final $Res Function(LoadingState<T>) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<T, $Res> {
  factory _$LoadingCopyWith(
          _Loading<T> value, $Res Function(_Loading<T>) then) =
      __$LoadingCopyWithImpl<T, $Res>;
  $Res call({T? content});
}

/// @nodoc
class __$LoadingCopyWithImpl<T, $Res>
    extends _$LoadingStateCopyWithImpl<T, $Res>
    implements _$LoadingCopyWith<T, $Res> {
  __$LoadingCopyWithImpl(_Loading<T> _value, $Res Function(_Loading<T>) _then)
      : super(_value, (v) => _then(v as _Loading<T>));

  @override
  _Loading<T> get _value => super._value as _Loading<T>;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_Loading<T>(
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_Loading<T> implements _Loading<T> {
  const _$_Loading(this.content);

  @override
  final T? content;

  @override
  String toString() {
    return 'LoadingState<$T>.loading(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loading<T> &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<T, _Loading<T>> get copyWith =>
      __$LoadingCopyWithImpl<T, _Loading<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? content) loading,
    required TResult Function(
            T content, AdditionalLoadingState next, AdditionalLoadingState prev)
        completed,
    required TResult Function(Exception exception) error,
  }) {
    return loading(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? content)? loading,
    TResult Function(T content, AdditionalLoadingState next,
            AdditionalLoadingState prev)?
        completed,
    TResult Function(Exception exception)? error,
  }) {
    return loading?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? content)? loading,
    TResult Function(T content, AdditionalLoadingState next,
            AdditionalLoadingState prev)?
        completed,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Completed<T> value) completed,
    required TResult Function(_Error<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Completed<T> value)? completed,
    TResult Function(_Error<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Completed<T> value)? completed,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements LoadingState<T> {
  const factory _Loading(final T? content) = _$_Loading<T>;

  T? get content => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingCopyWith<T, _Loading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CompletedCopyWith<T, $Res> {
  factory _$CompletedCopyWith(
          _Completed<T> value, $Res Function(_Completed<T>) then) =
      __$CompletedCopyWithImpl<T, $Res>;
  $Res call(
      {T content, AdditionalLoadingState next, AdditionalLoadingState prev});

  $AdditionalLoadingStateCopyWith<$Res> get next;
  $AdditionalLoadingStateCopyWith<$Res> get prev;
}

/// @nodoc
class __$CompletedCopyWithImpl<T, $Res>
    extends _$LoadingStateCopyWithImpl<T, $Res>
    implements _$CompletedCopyWith<T, $Res> {
  __$CompletedCopyWithImpl(
      _Completed<T> _value, $Res Function(_Completed<T>) _then)
      : super(_value, (v) => _then(v as _Completed<T>));

  @override
  _Completed<T> get _value => super._value as _Completed<T>;

  @override
  $Res call({
    Object? content = freezed,
    Object? next = freezed,
    Object? prev = freezed,
  }) {
    return _then(_Completed<T>(
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as T,
      next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as AdditionalLoadingState,
      prev == freezed
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as AdditionalLoadingState,
    ));
  }

  @override
  $AdditionalLoadingStateCopyWith<$Res> get next {
    return $AdditionalLoadingStateCopyWith<$Res>(_value.next, (value) {
      return _then(_value.copyWith(next: value));
    });
  }

  @override
  $AdditionalLoadingStateCopyWith<$Res> get prev {
    return $AdditionalLoadingStateCopyWith<$Res>(_value.prev, (value) {
      return _then(_value.copyWith(prev: value));
    });
  }
}

/// @nodoc

class _$_Completed<T> implements _Completed<T> {
  const _$_Completed(this.content, this.next, this.prev);

  @override
  final T content;
  @override
  final AdditionalLoadingState next;
  @override
  final AdditionalLoadingState prev;

  @override
  String toString() {
    return 'LoadingState<$T>.completed(content: $content, next: $next, prev: $prev)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Completed<T> &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            const DeepCollectionEquality().equals(other.prev, prev));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(prev));

  @JsonKey(ignore: true)
  @override
  _$CompletedCopyWith<T, _Completed<T>> get copyWith =>
      __$CompletedCopyWithImpl<T, _Completed<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? content) loading,
    required TResult Function(
            T content, AdditionalLoadingState next, AdditionalLoadingState prev)
        completed,
    required TResult Function(Exception exception) error,
  }) {
    return completed(content, next, prev);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? content)? loading,
    TResult Function(T content, AdditionalLoadingState next,
            AdditionalLoadingState prev)?
        completed,
    TResult Function(Exception exception)? error,
  }) {
    return completed?.call(content, next, prev);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? content)? loading,
    TResult Function(T content, AdditionalLoadingState next,
            AdditionalLoadingState prev)?
        completed,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(content, next, prev);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Completed<T> value) completed,
    required TResult Function(_Error<T> value) error,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Completed<T> value)? completed,
    TResult Function(_Error<T> value)? error,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Completed<T> value)? completed,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed<T> implements LoadingState<T> {
  const factory _Completed(final T content, final AdditionalLoadingState next,
      final AdditionalLoadingState prev) = _$_Completed<T>;

  T get content => throw _privateConstructorUsedError;
  AdditionalLoadingState get next => throw _privateConstructorUsedError;
  AdditionalLoadingState get prev => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CompletedCopyWith<T, _Completed<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<T, $Res> {
  factory _$ErrorCopyWith(_Error<T> value, $Res Function(_Error<T>) then) =
      __$ErrorCopyWithImpl<T, $Res>;
  $Res call({Exception exception});
}

/// @nodoc
class __$ErrorCopyWithImpl<T, $Res> extends _$LoadingStateCopyWithImpl<T, $Res>
    implements _$ErrorCopyWith<T, $Res> {
  __$ErrorCopyWithImpl(_Error<T> _value, $Res Function(_Error<T>) _then)
      : super(_value, (v) => _then(v as _Error<T>));

  @override
  _Error<T> get _value => super._value as _Error<T>;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_Error<T>(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_Error<T> implements _Error<T> {
  const _$_Error(this.exception);

  @override
  final Exception exception;

  @override
  String toString() {
    return 'LoadingState<$T>.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error<T> &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<T, _Error<T>> get copyWith =>
      __$ErrorCopyWithImpl<T, _Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? content) loading,
    required TResult Function(
            T content, AdditionalLoadingState next, AdditionalLoadingState prev)
        completed,
    required TResult Function(Exception exception) error,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? content)? loading,
    TResult Function(T content, AdditionalLoadingState next,
            AdditionalLoadingState prev)?
        completed,
    TResult Function(Exception exception)? error,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? content)? loading,
    TResult Function(T content, AdditionalLoadingState next,
            AdditionalLoadingState prev)?
        completed,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Completed<T> value) completed,
    required TResult Function(_Error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Completed<T> value)? completed,
    TResult Function(_Error<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Completed<T> value)? completed,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> implements LoadingState<T> {
  const factory _Error(final Exception exception) = _$_Error<T>;

  Exception get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<T, _Error<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
