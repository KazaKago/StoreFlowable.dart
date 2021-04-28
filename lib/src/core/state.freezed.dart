// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StateTearOff {
  const _$StateTearOff();

  _Fixed<T> fixed<T>(StateContent<T> content) {
    return _Fixed<T>(
      content,
    );
  }

  _Loading<T> loading<T>(StateContent<T> content) {
    return _Loading<T>(
      content,
    );
  }

  _Error<T> error<T>(StateContent<T> content, Exception exception) {
    return _Error<T>(
      content,
      exception,
    );
  }
}

/// @nodoc
const $State = _$StateTearOff();

/// @nodoc
mixin _$State<T> {
  StateContent<T> get content => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StateContent<T> content) fixed,
    required TResult Function(StateContent<T> content) loading,
    required TResult Function(StateContent<T> content, Exception exception)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StateContent<T> content)? fixed,
    TResult Function(StateContent<T> content)? loading,
    TResult Function(StateContent<T> content, Exception exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fixed<T> value) fixed,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fixed<T> value)? fixed,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateCopyWith<T, State<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateCopyWith<T, $Res> {
  factory $StateCopyWith(State<T> value, $Res Function(State<T>) then) =
      _$StateCopyWithImpl<T, $Res>;
  $Res call({StateContent<T> content});

  $StateContentCopyWith<T, $Res> get content;
}

/// @nodoc
class _$StateCopyWithImpl<T, $Res> implements $StateCopyWith<T, $Res> {
  _$StateCopyWithImpl(this._value, this._then);

  final State<T> _value;
  // ignore: unused_field
  final $Res Function(State<T>) _then;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as StateContent<T>,
    ));
  }

  @override
  $StateContentCopyWith<T, $Res> get content {
    return $StateContentCopyWith<T, $Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value));
    });
  }
}

/// @nodoc
abstract class _$FixedCopyWith<T, $Res> implements $StateCopyWith<T, $Res> {
  factory _$FixedCopyWith(_Fixed<T> value, $Res Function(_Fixed<T>) then) =
      __$FixedCopyWithImpl<T, $Res>;
  @override
  $Res call({StateContent<T> content});

  @override
  $StateContentCopyWith<T, $Res> get content;
}

/// @nodoc
class __$FixedCopyWithImpl<T, $Res> extends _$StateCopyWithImpl<T, $Res>
    implements _$FixedCopyWith<T, $Res> {
  __$FixedCopyWithImpl(_Fixed<T> _value, $Res Function(_Fixed<T>) _then)
      : super(_value, (v) => _then(v as _Fixed<T>));

  @override
  _Fixed<T> get _value => super._value as _Fixed<T>;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_Fixed<T>(
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as StateContent<T>,
    ));
  }
}

/// @nodoc
class _$_Fixed<T> implements _Fixed<T> {
  const _$_Fixed(this.content);

  @override
  final StateContent<T> content;

  @override
  String toString() {
    return 'State<$T>.fixed(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Fixed<T> &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(content);

  @JsonKey(ignore: true)
  @override
  _$FixedCopyWith<T, _Fixed<T>> get copyWith =>
      __$FixedCopyWithImpl<T, _Fixed<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StateContent<T> content) fixed,
    required TResult Function(StateContent<T> content) loading,
    required TResult Function(StateContent<T> content, Exception exception)
        error,
  }) {
    return fixed(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StateContent<T> content)? fixed,
    TResult Function(StateContent<T> content)? loading,
    TResult Function(StateContent<T> content, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (fixed != null) {
      return fixed(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fixed<T> value) fixed,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
  }) {
    return fixed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fixed<T> value)? fixed,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (fixed != null) {
      return fixed(this);
    }
    return orElse();
  }
}

abstract class _Fixed<T> implements State<T> {
  const factory _Fixed(StateContent<T> content) = _$_Fixed<T>;

  @override
  StateContent<T> get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FixedCopyWith<T, _Fixed<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<T, $Res> implements $StateCopyWith<T, $Res> {
  factory _$LoadingCopyWith(
          _Loading<T> value, $Res Function(_Loading<T>) then) =
      __$LoadingCopyWithImpl<T, $Res>;
  @override
  $Res call({StateContent<T> content});

  @override
  $StateContentCopyWith<T, $Res> get content;
}

/// @nodoc
class __$LoadingCopyWithImpl<T, $Res> extends _$StateCopyWithImpl<T, $Res>
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
              as StateContent<T>,
    ));
  }
}

/// @nodoc
class _$_Loading<T> implements _Loading<T> {
  const _$_Loading(this.content);

  @override
  final StateContent<T> content;

  @override
  String toString() {
    return 'State<$T>.loading(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading<T> &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(content);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<T, _Loading<T>> get copyWith =>
      __$LoadingCopyWithImpl<T, _Loading<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StateContent<T> content) fixed,
    required TResult Function(StateContent<T> content) loading,
    required TResult Function(StateContent<T> content, Exception exception)
        error,
  }) {
    return loading(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StateContent<T> content)? fixed,
    TResult Function(StateContent<T> content)? loading,
    TResult Function(StateContent<T> content, Exception exception)? error,
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
    required TResult Function(_Fixed<T> value) fixed,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fixed<T> value)? fixed,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements State<T> {
  const factory _Loading(StateContent<T> content) = _$_Loading<T>;

  @override
  StateContent<T> get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<T, _Loading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<T, $Res> implements $StateCopyWith<T, $Res> {
  factory _$ErrorCopyWith(_Error<T> value, $Res Function(_Error<T>) then) =
      __$ErrorCopyWithImpl<T, $Res>;
  @override
  $Res call({StateContent<T> content, Exception exception});

  @override
  $StateContentCopyWith<T, $Res> get content;
}

/// @nodoc
class __$ErrorCopyWithImpl<T, $Res> extends _$StateCopyWithImpl<T, $Res>
    implements _$ErrorCopyWith<T, $Res> {
  __$ErrorCopyWithImpl(_Error<T> _value, $Res Function(_Error<T>) _then)
      : super(_value, (v) => _then(v as _Error<T>));

  @override
  _Error<T> get _value => super._value as _Error<T>;

  @override
  $Res call({
    Object? content = freezed,
    Object? exception = freezed,
  }) {
    return _then(_Error<T>(
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as StateContent<T>,
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc
class _$_Error<T> implements _Error<T> {
  const _$_Error(this.content, this.exception);

  @override
  final StateContent<T> content;
  @override
  final Exception exception;

  @override
  String toString() {
    return 'State<$T>.error(content: $content, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error<T> &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<T, _Error<T>> get copyWith =>
      __$ErrorCopyWithImpl<T, _Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StateContent<T> content) fixed,
    required TResult Function(StateContent<T> content) loading,
    required TResult Function(StateContent<T> content, Exception exception)
        error,
  }) {
    return error(content, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StateContent<T> content)? fixed,
    TResult Function(StateContent<T> content)? loading,
    TResult Function(StateContent<T> content, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(content, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fixed<T> value) fixed,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fixed<T> value)? fixed,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> implements State<T> {
  const factory _Error(StateContent<T> content, Exception exception) =
      _$_Error<T>;

  @override
  StateContent<T> get content => throw _privateConstructorUsedError;
  Exception get exception => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorCopyWith<T, _Error<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
