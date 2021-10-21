// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'additional_loading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdditionalLoadingStateTearOff {
  const _$AdditionalLoadingStateTearOff();

  _Fixed fixed({required bool canRequestAdditionalData}) {
    return _Fixed(
      canRequestAdditionalData: canRequestAdditionalData,
    );
  }

  _Loading loading() {
    return const _Loading();
  }

  _Error error(Exception exception) {
    return _Error(
      exception,
    );
  }
}

/// @nodoc
const $AdditionalLoadingState = _$AdditionalLoadingStateTearOff();

/// @nodoc
mixin _$AdditionalLoadingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool canRequestAdditionalData) fixed,
    required TResult Function() loading,
    required TResult Function(Exception exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool canRequestAdditionalData)? fixed,
    TResult Function()? loading,
    TResult Function(Exception exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canRequestAdditionalData)? fixed,
    TResult Function()? loading,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fixed value) fixed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fixed value)? fixed,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fixed value)? fixed,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalLoadingStateCopyWith<$Res> {
  factory $AdditionalLoadingStateCopyWith(AdditionalLoadingState value,
          $Res Function(AdditionalLoadingState) then) =
      _$AdditionalLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdditionalLoadingStateCopyWithImpl<$Res>
    implements $AdditionalLoadingStateCopyWith<$Res> {
  _$AdditionalLoadingStateCopyWithImpl(this._value, this._then);

  final AdditionalLoadingState _value;
  // ignore: unused_field
  final $Res Function(AdditionalLoadingState) _then;
}

/// @nodoc
abstract class _$FixedCopyWith<$Res> {
  factory _$FixedCopyWith(_Fixed value, $Res Function(_Fixed) then) =
      __$FixedCopyWithImpl<$Res>;
  $Res call({bool canRequestAdditionalData});
}

/// @nodoc
class __$FixedCopyWithImpl<$Res>
    extends _$AdditionalLoadingStateCopyWithImpl<$Res>
    implements _$FixedCopyWith<$Res> {
  __$FixedCopyWithImpl(_Fixed _value, $Res Function(_Fixed) _then)
      : super(_value, (v) => _then(v as _Fixed));

  @override
  _Fixed get _value => super._value as _Fixed;

  @override
  $Res call({
    Object? canRequestAdditionalData = freezed,
  }) {
    return _then(_Fixed(
      canRequestAdditionalData: canRequestAdditionalData == freezed
          ? _value.canRequestAdditionalData
          : canRequestAdditionalData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Fixed implements _Fixed {
  const _$_Fixed({required this.canRequestAdditionalData});

  @override
  final bool canRequestAdditionalData;

  @override
  String toString() {
    return 'AdditionalLoadingState.fixed(canRequestAdditionalData: $canRequestAdditionalData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Fixed &&
            (identical(
                    other.canRequestAdditionalData, canRequestAdditionalData) ||
                other.canRequestAdditionalData == canRequestAdditionalData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, canRequestAdditionalData);

  @JsonKey(ignore: true)
  @override
  _$FixedCopyWith<_Fixed> get copyWith =>
      __$FixedCopyWithImpl<_Fixed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool canRequestAdditionalData) fixed,
    required TResult Function() loading,
    required TResult Function(Exception exception) error,
  }) {
    return fixed(canRequestAdditionalData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool canRequestAdditionalData)? fixed,
    TResult Function()? loading,
    TResult Function(Exception exception)? error,
  }) {
    return fixed?.call(canRequestAdditionalData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canRequestAdditionalData)? fixed,
    TResult Function()? loading,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (fixed != null) {
      return fixed(canRequestAdditionalData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fixed value) fixed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return fixed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fixed value)? fixed,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return fixed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fixed value)? fixed,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (fixed != null) {
      return fixed(this);
    }
    return orElse();
  }
}

abstract class _Fixed implements AdditionalLoadingState {
  const factory _Fixed({required bool canRequestAdditionalData}) = _$_Fixed;

  bool get canRequestAdditionalData;
  @JsonKey(ignore: true)
  _$FixedCopyWith<_Fixed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$AdditionalLoadingStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AdditionalLoadingState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool canRequestAdditionalData) fixed,
    required TResult Function() loading,
    required TResult Function(Exception exception) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool canRequestAdditionalData)? fixed,
    TResult Function()? loading,
    TResult Function(Exception exception)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canRequestAdditionalData)? fixed,
    TResult Function()? loading,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fixed value) fixed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fixed value)? fixed,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fixed value)? fixed,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AdditionalLoadingState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({Exception exception});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    extends _$AdditionalLoadingStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_Error(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.exception);

  @override
  final Exception exception;

  @override
  String toString() {
    return 'AdditionalLoadingState.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool canRequestAdditionalData) fixed,
    required TResult Function() loading,
    required TResult Function(Exception exception) error,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool canRequestAdditionalData)? fixed,
    TResult Function()? loading,
    TResult Function(Exception exception)? error,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canRequestAdditionalData)? fixed,
    TResult Function()? loading,
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
    required TResult Function(_Fixed value) fixed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fixed value)? fixed,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fixed value)? fixed,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AdditionalLoadingState {
  const factory _Error(Exception exception) = _$_Error;

  Exception get exception;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
