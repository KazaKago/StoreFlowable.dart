// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DataStateTearOff {
  const _$DataStateTearOff();

  DataStateFixed fixed(
      {required AdditionalDataState nextDataState,
      required AdditionalDataState prevDataState}) {
    return DataStateFixed(
      nextDataState: nextDataState,
      prevDataState: prevDataState,
    );
  }

  DataStateLoading loading() {
    return const DataStateLoading();
  }

  DataStateError error({required Exception exception}) {
    return DataStateError(
      exception: exception,
    );
  }
}

/// @nodoc
const $DataState = _$DataStateTearOff();

/// @nodoc
mixin _$DataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AdditionalDataState nextDataState,
            AdditionalDataState prevDataState)
        fixed,
    required TResult Function() loading,
    required TResult Function(Exception exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdditionalDataState nextDataState,
            AdditionalDataState prevDataState)?
        fixed,
    TResult Function()? loading,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataStateFixed value) fixed,
    required TResult Function(DataStateLoading value) loading,
    required TResult Function(DataStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataStateFixed value)? fixed,
    TResult Function(DataStateLoading value)? loading,
    TResult Function(DataStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStateCopyWith<$Res> {
  factory $DataStateCopyWith(DataState value, $Res Function(DataState) then) =
      _$DataStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataStateCopyWithImpl<$Res> implements $DataStateCopyWith<$Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  final DataState _value;
  // ignore: unused_field
  final $Res Function(DataState) _then;
}

/// @nodoc
abstract class $DataStateFixedCopyWith<$Res> {
  factory $DataStateFixedCopyWith(
          DataStateFixed value, $Res Function(DataStateFixed) then) =
      _$DataStateFixedCopyWithImpl<$Res>;
  $Res call(
      {AdditionalDataState nextDataState, AdditionalDataState prevDataState});

  $AdditionalDataStateCopyWith<$Res> get nextDataState;
  $AdditionalDataStateCopyWith<$Res> get prevDataState;
}

/// @nodoc
class _$DataStateFixedCopyWithImpl<$Res> extends _$DataStateCopyWithImpl<$Res>
    implements $DataStateFixedCopyWith<$Res> {
  _$DataStateFixedCopyWithImpl(
      DataStateFixed _value, $Res Function(DataStateFixed) _then)
      : super(_value, (v) => _then(v as DataStateFixed));

  @override
  DataStateFixed get _value => super._value as DataStateFixed;

  @override
  $Res call({
    Object? nextDataState = freezed,
    Object? prevDataState = freezed,
  }) {
    return _then(DataStateFixed(
      nextDataState: nextDataState == freezed
          ? _value.nextDataState
          : nextDataState // ignore: cast_nullable_to_non_nullable
              as AdditionalDataState,
      prevDataState: prevDataState == freezed
          ? _value.prevDataState
          : prevDataState // ignore: cast_nullable_to_non_nullable
              as AdditionalDataState,
    ));
  }

  @override
  $AdditionalDataStateCopyWith<$Res> get nextDataState {
    return $AdditionalDataStateCopyWith<$Res>(_value.nextDataState, (value) {
      return _then(_value.copyWith(nextDataState: value));
    });
  }

  @override
  $AdditionalDataStateCopyWith<$Res> get prevDataState {
    return $AdditionalDataStateCopyWith<$Res>(_value.prevDataState, (value) {
      return _then(_value.copyWith(prevDataState: value));
    });
  }
}

/// @nodoc

class _$DataStateFixed extends DataStateFixed {
  const _$DataStateFixed(
      {required this.nextDataState, required this.prevDataState})
      : super._();

  @override
  final AdditionalDataState nextDataState;
  @override
  final AdditionalDataState prevDataState;

  @override
  String toString() {
    return 'DataState.fixed(nextDataState: $nextDataState, prevDataState: $prevDataState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataStateFixed &&
            (identical(other.nextDataState, nextDataState) ||
                const DeepCollectionEquality()
                    .equals(other.nextDataState, nextDataState)) &&
            (identical(other.prevDataState, prevDataState) ||
                const DeepCollectionEquality()
                    .equals(other.prevDataState, prevDataState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nextDataState) ^
      const DeepCollectionEquality().hash(prevDataState);

  @JsonKey(ignore: true)
  @override
  $DataStateFixedCopyWith<DataStateFixed> get copyWith =>
      _$DataStateFixedCopyWithImpl<DataStateFixed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AdditionalDataState nextDataState,
            AdditionalDataState prevDataState)
        fixed,
    required TResult Function() loading,
    required TResult Function(Exception exception) error,
  }) {
    return fixed(nextDataState, prevDataState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdditionalDataState nextDataState,
            AdditionalDataState prevDataState)?
        fixed,
    TResult Function()? loading,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (fixed != null) {
      return fixed(nextDataState, prevDataState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataStateFixed value) fixed,
    required TResult Function(DataStateLoading value) loading,
    required TResult Function(DataStateError value) error,
  }) {
    return fixed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataStateFixed value)? fixed,
    TResult Function(DataStateLoading value)? loading,
    TResult Function(DataStateError value)? error,
    required TResult orElse(),
  }) {
    if (fixed != null) {
      return fixed(this);
    }
    return orElse();
  }
}

abstract class DataStateFixed extends DataState {
  const factory DataStateFixed(
      {required AdditionalDataState nextDataState,
      required AdditionalDataState prevDataState}) = _$DataStateFixed;
  const DataStateFixed._() : super._();

  AdditionalDataState get nextDataState => throw _privateConstructorUsedError;
  AdditionalDataState get prevDataState => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataStateFixedCopyWith<DataStateFixed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStateLoadingCopyWith<$Res> {
  factory $DataStateLoadingCopyWith(
          DataStateLoading value, $Res Function(DataStateLoading) then) =
      _$DataStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataStateLoadingCopyWithImpl<$Res> extends _$DataStateCopyWithImpl<$Res>
    implements $DataStateLoadingCopyWith<$Res> {
  _$DataStateLoadingCopyWithImpl(
      DataStateLoading _value, $Res Function(DataStateLoading) _then)
      : super(_value, (v) => _then(v as DataStateLoading));

  @override
  DataStateLoading get _value => super._value as DataStateLoading;
}

/// @nodoc

class _$DataStateLoading extends DataStateLoading {
  const _$DataStateLoading() : super._();

  @override
  String toString() {
    return 'DataState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AdditionalDataState nextDataState,
            AdditionalDataState prevDataState)
        fixed,
    required TResult Function() loading,
    required TResult Function(Exception exception) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdditionalDataState nextDataState,
            AdditionalDataState prevDataState)?
        fixed,
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
    required TResult Function(DataStateFixed value) fixed,
    required TResult Function(DataStateLoading value) loading,
    required TResult Function(DataStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataStateFixed value)? fixed,
    TResult Function(DataStateLoading value)? loading,
    TResult Function(DataStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DataStateLoading extends DataState {
  const factory DataStateLoading() = _$DataStateLoading;
  const DataStateLoading._() : super._();
}

/// @nodoc
abstract class $DataStateErrorCopyWith<$Res> {
  factory $DataStateErrorCopyWith(
          DataStateError value, $Res Function(DataStateError) then) =
      _$DataStateErrorCopyWithImpl<$Res>;
  $Res call({Exception exception});
}

/// @nodoc
class _$DataStateErrorCopyWithImpl<$Res> extends _$DataStateCopyWithImpl<$Res>
    implements $DataStateErrorCopyWith<$Res> {
  _$DataStateErrorCopyWithImpl(
      DataStateError _value, $Res Function(DataStateError) _then)
      : super(_value, (v) => _then(v as DataStateError));

  @override
  DataStateError get _value => super._value as DataStateError;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(DataStateError(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$DataStateError extends DataStateError {
  const _$DataStateError({required this.exception}) : super._();

  @override
  final Exception exception;

  @override
  String toString() {
    return 'DataState.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataStateError &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  $DataStateErrorCopyWith<DataStateError> get copyWith =>
      _$DataStateErrorCopyWithImpl<DataStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AdditionalDataState nextDataState,
            AdditionalDataState prevDataState)
        fixed,
    required TResult Function() loading,
    required TResult Function(Exception exception) error,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdditionalDataState nextDataState,
            AdditionalDataState prevDataState)?
        fixed,
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
    required TResult Function(DataStateFixed value) fixed,
    required TResult Function(DataStateLoading value) loading,
    required TResult Function(DataStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataStateFixed value)? fixed,
    TResult Function(DataStateLoading value)? loading,
    TResult Function(DataStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DataStateError extends DataState {
  const factory DataStateError({required Exception exception}) =
      _$DataStateError;
  const DataStateError._() : super._();

  Exception get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataStateErrorCopyWith<DataStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
