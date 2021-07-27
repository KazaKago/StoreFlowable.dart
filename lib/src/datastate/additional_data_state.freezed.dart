// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'additional_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdditionalDataStateTearOff {
  const _$AdditionalDataStateTearOff();

  AdditionalDataStateFixed fixed({required String additionalRequestKey}) {
    return AdditionalDataStateFixed(
      additionalRequestKey: additionalRequestKey,
    );
  }

  AdditionalDataStateFixedWithNoMoreAdditionalData
      fixedWithNoMoreAdditionalData() {
    return const AdditionalDataStateFixedWithNoMoreAdditionalData();
  }

  AdditionalDataStateLoading loading({required String additionalRequestKey}) {
    return AdditionalDataStateLoading(
      additionalRequestKey: additionalRequestKey,
    );
  }

  AdditionalDataStateError error(
      {required String additionalRequestKey, required Exception exception}) {
    return AdditionalDataStateError(
      additionalRequestKey: additionalRequestKey,
      exception: exception,
    );
  }
}

/// @nodoc
const $AdditionalDataState = _$AdditionalDataStateTearOff();

/// @nodoc
mixin _$AdditionalDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String additionalRequestKey) fixed,
    required TResult Function() fixedWithNoMoreAdditionalData,
    required TResult Function(String additionalRequestKey) loading,
    required TResult Function(String additionalRequestKey, Exception exception)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String additionalRequestKey)? fixed,
    TResult Function()? fixedWithNoMoreAdditionalData,
    TResult Function(String additionalRequestKey)? loading,
    TResult Function(String additionalRequestKey, Exception exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdditionalDataStateFixed value) fixed,
    required TResult Function(
            AdditionalDataStateFixedWithNoMoreAdditionalData value)
        fixedWithNoMoreAdditionalData,
    required TResult Function(AdditionalDataStateLoading value) loading,
    required TResult Function(AdditionalDataStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdditionalDataStateFixed value)? fixed,
    TResult Function(AdditionalDataStateFixedWithNoMoreAdditionalData value)?
        fixedWithNoMoreAdditionalData,
    TResult Function(AdditionalDataStateLoading value)? loading,
    TResult Function(AdditionalDataStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalDataStateCopyWith<$Res> {
  factory $AdditionalDataStateCopyWith(
          AdditionalDataState value, $Res Function(AdditionalDataState) then) =
      _$AdditionalDataStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdditionalDataStateCopyWithImpl<$Res>
    implements $AdditionalDataStateCopyWith<$Res> {
  _$AdditionalDataStateCopyWithImpl(this._value, this._then);

  final AdditionalDataState _value;
  // ignore: unused_field
  final $Res Function(AdditionalDataState) _then;
}

/// @nodoc
abstract class $AdditionalDataStateFixedCopyWith<$Res> {
  factory $AdditionalDataStateFixedCopyWith(AdditionalDataStateFixed value,
          $Res Function(AdditionalDataStateFixed) then) =
      _$AdditionalDataStateFixedCopyWithImpl<$Res>;
  $Res call({String additionalRequestKey});
}

/// @nodoc
class _$AdditionalDataStateFixedCopyWithImpl<$Res>
    extends _$AdditionalDataStateCopyWithImpl<$Res>
    implements $AdditionalDataStateFixedCopyWith<$Res> {
  _$AdditionalDataStateFixedCopyWithImpl(AdditionalDataStateFixed _value,
      $Res Function(AdditionalDataStateFixed) _then)
      : super(_value, (v) => _then(v as AdditionalDataStateFixed));

  @override
  AdditionalDataStateFixed get _value =>
      super._value as AdditionalDataStateFixed;

  @override
  $Res call({
    Object? additionalRequestKey = freezed,
  }) {
    return _then(AdditionalDataStateFixed(
      additionalRequestKey: additionalRequestKey == freezed
          ? _value.additionalRequestKey
          : additionalRequestKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AdditionalDataStateFixed extends AdditionalDataStateFixed {
  const _$AdditionalDataStateFixed({required this.additionalRequestKey})
      : super._();

  @override
  final String additionalRequestKey;

  @override
  String toString() {
    return 'AdditionalDataState.fixed(additionalRequestKey: $additionalRequestKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdditionalDataStateFixed &&
            (identical(other.additionalRequestKey, additionalRequestKey) ||
                const DeepCollectionEquality()
                    .equals(other.additionalRequestKey, additionalRequestKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(additionalRequestKey);

  @JsonKey(ignore: true)
  @override
  $AdditionalDataStateFixedCopyWith<AdditionalDataStateFixed> get copyWith =>
      _$AdditionalDataStateFixedCopyWithImpl<AdditionalDataStateFixed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String additionalRequestKey) fixed,
    required TResult Function() fixedWithNoMoreAdditionalData,
    required TResult Function(String additionalRequestKey) loading,
    required TResult Function(String additionalRequestKey, Exception exception)
        error,
  }) {
    return fixed(additionalRequestKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String additionalRequestKey)? fixed,
    TResult Function()? fixedWithNoMoreAdditionalData,
    TResult Function(String additionalRequestKey)? loading,
    TResult Function(String additionalRequestKey, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (fixed != null) {
      return fixed(additionalRequestKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdditionalDataStateFixed value) fixed,
    required TResult Function(
            AdditionalDataStateFixedWithNoMoreAdditionalData value)
        fixedWithNoMoreAdditionalData,
    required TResult Function(AdditionalDataStateLoading value) loading,
    required TResult Function(AdditionalDataStateError value) error,
  }) {
    return fixed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdditionalDataStateFixed value)? fixed,
    TResult Function(AdditionalDataStateFixedWithNoMoreAdditionalData value)?
        fixedWithNoMoreAdditionalData,
    TResult Function(AdditionalDataStateLoading value)? loading,
    TResult Function(AdditionalDataStateError value)? error,
    required TResult orElse(),
  }) {
    if (fixed != null) {
      return fixed(this);
    }
    return orElse();
  }
}

abstract class AdditionalDataStateFixed extends AdditionalDataState {
  const factory AdditionalDataStateFixed(
      {required String additionalRequestKey}) = _$AdditionalDataStateFixed;
  const AdditionalDataStateFixed._() : super._();

  String get additionalRequestKey => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalDataStateFixedCopyWith<AdditionalDataStateFixed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalDataStateFixedWithNoMoreAdditionalDataCopyWith<$Res> {
  factory $AdditionalDataStateFixedWithNoMoreAdditionalDataCopyWith(
          AdditionalDataStateFixedWithNoMoreAdditionalData value,
          $Res Function(AdditionalDataStateFixedWithNoMoreAdditionalData)
              then) =
      _$AdditionalDataStateFixedWithNoMoreAdditionalDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdditionalDataStateFixedWithNoMoreAdditionalDataCopyWithImpl<$Res>
    extends _$AdditionalDataStateCopyWithImpl<$Res>
    implements $AdditionalDataStateFixedWithNoMoreAdditionalDataCopyWith<$Res> {
  _$AdditionalDataStateFixedWithNoMoreAdditionalDataCopyWithImpl(
      AdditionalDataStateFixedWithNoMoreAdditionalData _value,
      $Res Function(AdditionalDataStateFixedWithNoMoreAdditionalData) _then)
      : super(
            _value,
            (v) =>
                _then(v as AdditionalDataStateFixedWithNoMoreAdditionalData));

  @override
  AdditionalDataStateFixedWithNoMoreAdditionalData get _value =>
      super._value as AdditionalDataStateFixedWithNoMoreAdditionalData;
}

/// @nodoc

class _$AdditionalDataStateFixedWithNoMoreAdditionalData
    extends AdditionalDataStateFixedWithNoMoreAdditionalData {
  const _$AdditionalDataStateFixedWithNoMoreAdditionalData() : super._();

  @override
  String toString() {
    return 'AdditionalDataState.fixedWithNoMoreAdditionalData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdditionalDataStateFixedWithNoMoreAdditionalData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String additionalRequestKey) fixed,
    required TResult Function() fixedWithNoMoreAdditionalData,
    required TResult Function(String additionalRequestKey) loading,
    required TResult Function(String additionalRequestKey, Exception exception)
        error,
  }) {
    return fixedWithNoMoreAdditionalData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String additionalRequestKey)? fixed,
    TResult Function()? fixedWithNoMoreAdditionalData,
    TResult Function(String additionalRequestKey)? loading,
    TResult Function(String additionalRequestKey, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (fixedWithNoMoreAdditionalData != null) {
      return fixedWithNoMoreAdditionalData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdditionalDataStateFixed value) fixed,
    required TResult Function(
            AdditionalDataStateFixedWithNoMoreAdditionalData value)
        fixedWithNoMoreAdditionalData,
    required TResult Function(AdditionalDataStateLoading value) loading,
    required TResult Function(AdditionalDataStateError value) error,
  }) {
    return fixedWithNoMoreAdditionalData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdditionalDataStateFixed value)? fixed,
    TResult Function(AdditionalDataStateFixedWithNoMoreAdditionalData value)?
        fixedWithNoMoreAdditionalData,
    TResult Function(AdditionalDataStateLoading value)? loading,
    TResult Function(AdditionalDataStateError value)? error,
    required TResult orElse(),
  }) {
    if (fixedWithNoMoreAdditionalData != null) {
      return fixedWithNoMoreAdditionalData(this);
    }
    return orElse();
  }
}

abstract class AdditionalDataStateFixedWithNoMoreAdditionalData
    extends AdditionalDataState {
  const factory AdditionalDataStateFixedWithNoMoreAdditionalData() =
      _$AdditionalDataStateFixedWithNoMoreAdditionalData;
  const AdditionalDataStateFixedWithNoMoreAdditionalData._() : super._();
}

/// @nodoc
abstract class $AdditionalDataStateLoadingCopyWith<$Res> {
  factory $AdditionalDataStateLoadingCopyWith(AdditionalDataStateLoading value,
          $Res Function(AdditionalDataStateLoading) then) =
      _$AdditionalDataStateLoadingCopyWithImpl<$Res>;
  $Res call({String additionalRequestKey});
}

/// @nodoc
class _$AdditionalDataStateLoadingCopyWithImpl<$Res>
    extends _$AdditionalDataStateCopyWithImpl<$Res>
    implements $AdditionalDataStateLoadingCopyWith<$Res> {
  _$AdditionalDataStateLoadingCopyWithImpl(AdditionalDataStateLoading _value,
      $Res Function(AdditionalDataStateLoading) _then)
      : super(_value, (v) => _then(v as AdditionalDataStateLoading));

  @override
  AdditionalDataStateLoading get _value =>
      super._value as AdditionalDataStateLoading;

  @override
  $Res call({
    Object? additionalRequestKey = freezed,
  }) {
    return _then(AdditionalDataStateLoading(
      additionalRequestKey: additionalRequestKey == freezed
          ? _value.additionalRequestKey
          : additionalRequestKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AdditionalDataStateLoading extends AdditionalDataStateLoading {
  const _$AdditionalDataStateLoading({required this.additionalRequestKey})
      : super._();

  @override
  final String additionalRequestKey;

  @override
  String toString() {
    return 'AdditionalDataState.loading(additionalRequestKey: $additionalRequestKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdditionalDataStateLoading &&
            (identical(other.additionalRequestKey, additionalRequestKey) ||
                const DeepCollectionEquality()
                    .equals(other.additionalRequestKey, additionalRequestKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(additionalRequestKey);

  @JsonKey(ignore: true)
  @override
  $AdditionalDataStateLoadingCopyWith<AdditionalDataStateLoading>
      get copyWith =>
          _$AdditionalDataStateLoadingCopyWithImpl<AdditionalDataStateLoading>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String additionalRequestKey) fixed,
    required TResult Function() fixedWithNoMoreAdditionalData,
    required TResult Function(String additionalRequestKey) loading,
    required TResult Function(String additionalRequestKey, Exception exception)
        error,
  }) {
    return loading(additionalRequestKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String additionalRequestKey)? fixed,
    TResult Function()? fixedWithNoMoreAdditionalData,
    TResult Function(String additionalRequestKey)? loading,
    TResult Function(String additionalRequestKey, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(additionalRequestKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdditionalDataStateFixed value) fixed,
    required TResult Function(
            AdditionalDataStateFixedWithNoMoreAdditionalData value)
        fixedWithNoMoreAdditionalData,
    required TResult Function(AdditionalDataStateLoading value) loading,
    required TResult Function(AdditionalDataStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdditionalDataStateFixed value)? fixed,
    TResult Function(AdditionalDataStateFixedWithNoMoreAdditionalData value)?
        fixedWithNoMoreAdditionalData,
    TResult Function(AdditionalDataStateLoading value)? loading,
    TResult Function(AdditionalDataStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AdditionalDataStateLoading extends AdditionalDataState {
  const factory AdditionalDataStateLoading(
      {required String additionalRequestKey}) = _$AdditionalDataStateLoading;
  const AdditionalDataStateLoading._() : super._();

  String get additionalRequestKey => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalDataStateLoadingCopyWith<AdditionalDataStateLoading>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalDataStateErrorCopyWith<$Res> {
  factory $AdditionalDataStateErrorCopyWith(AdditionalDataStateError value,
          $Res Function(AdditionalDataStateError) then) =
      _$AdditionalDataStateErrorCopyWithImpl<$Res>;
  $Res call({String additionalRequestKey, Exception exception});
}

/// @nodoc
class _$AdditionalDataStateErrorCopyWithImpl<$Res>
    extends _$AdditionalDataStateCopyWithImpl<$Res>
    implements $AdditionalDataStateErrorCopyWith<$Res> {
  _$AdditionalDataStateErrorCopyWithImpl(AdditionalDataStateError _value,
      $Res Function(AdditionalDataStateError) _then)
      : super(_value, (v) => _then(v as AdditionalDataStateError));

  @override
  AdditionalDataStateError get _value =>
      super._value as AdditionalDataStateError;

  @override
  $Res call({
    Object? additionalRequestKey = freezed,
    Object? exception = freezed,
  }) {
    return _then(AdditionalDataStateError(
      additionalRequestKey: additionalRequestKey == freezed
          ? _value.additionalRequestKey
          : additionalRequestKey // ignore: cast_nullable_to_non_nullable
              as String,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$AdditionalDataStateError extends AdditionalDataStateError {
  const _$AdditionalDataStateError(
      {required this.additionalRequestKey, required this.exception})
      : super._();

  @override
  final String additionalRequestKey;
  @override
  final Exception exception;

  @override
  String toString() {
    return 'AdditionalDataState.error(additionalRequestKey: $additionalRequestKey, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdditionalDataStateError &&
            (identical(other.additionalRequestKey, additionalRequestKey) ||
                const DeepCollectionEquality().equals(
                    other.additionalRequestKey, additionalRequestKey)) &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(additionalRequestKey) ^
      const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  $AdditionalDataStateErrorCopyWith<AdditionalDataStateError> get copyWith =>
      _$AdditionalDataStateErrorCopyWithImpl<AdditionalDataStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String additionalRequestKey) fixed,
    required TResult Function() fixedWithNoMoreAdditionalData,
    required TResult Function(String additionalRequestKey) loading,
    required TResult Function(String additionalRequestKey, Exception exception)
        error,
  }) {
    return error(additionalRequestKey, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String additionalRequestKey)? fixed,
    TResult Function()? fixedWithNoMoreAdditionalData,
    TResult Function(String additionalRequestKey)? loading,
    TResult Function(String additionalRequestKey, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(additionalRequestKey, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdditionalDataStateFixed value) fixed,
    required TResult Function(
            AdditionalDataStateFixedWithNoMoreAdditionalData value)
        fixedWithNoMoreAdditionalData,
    required TResult Function(AdditionalDataStateLoading value) loading,
    required TResult Function(AdditionalDataStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdditionalDataStateFixed value)? fixed,
    TResult Function(AdditionalDataStateFixedWithNoMoreAdditionalData value)?
        fixedWithNoMoreAdditionalData,
    TResult Function(AdditionalDataStateLoading value)? loading,
    TResult Function(AdditionalDataStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AdditionalDataStateError extends AdditionalDataState {
  const factory AdditionalDataStateError(
      {required String additionalRequestKey,
      required Exception exception}) = _$AdditionalDataStateError;
  const AdditionalDataStateError._() : super._();

  String get additionalRequestKey => throw _privateConstructorUsedError;
  Exception get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalDataStateErrorCopyWith<AdditionalDataStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
