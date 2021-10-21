// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'keyed_request_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$KeyedRequestTypeTearOff {
  const _$KeyedRequestTypeTearOff();

  _Refresh refresh() {
    return const _Refresh();
  }

  _Next next(String requestKey) {
    return _Next(
      requestKey,
    );
  }

  _Prev prev(String requestKey) {
    return _Prev(
      requestKey,
    );
  }
}

/// @nodoc
const $KeyedRequestType = _$KeyedRequestTypeTearOff();

/// @nodoc
mixin _$KeyedRequestType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String requestKey) next,
    required TResult Function(String requestKey) prev,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String requestKey)? next,
    TResult Function(String requestKey)? prev,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String requestKey)? next,
    TResult Function(String requestKey)? prev,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Next value) next,
    required TResult Function(_Prev value) prev,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Next value)? next,
    TResult Function(_Prev value)? prev,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Next value)? next,
    TResult Function(_Prev value)? prev,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyedRequestTypeCopyWith<$Res> {
  factory $KeyedRequestTypeCopyWith(
          KeyedRequestType value, $Res Function(KeyedRequestType) then) =
      _$KeyedRequestTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$KeyedRequestTypeCopyWithImpl<$Res>
    implements $KeyedRequestTypeCopyWith<$Res> {
  _$KeyedRequestTypeCopyWithImpl(this._value, this._then);

  final KeyedRequestType _value;
  // ignore: unused_field
  final $Res Function(KeyedRequestType) _then;
}

/// @nodoc
abstract class _$RefreshCopyWith<$Res> {
  factory _$RefreshCopyWith(_Refresh value, $Res Function(_Refresh) then) =
      __$RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshCopyWithImpl<$Res> extends _$KeyedRequestTypeCopyWithImpl<$Res>
    implements _$RefreshCopyWith<$Res> {
  __$RefreshCopyWithImpl(_Refresh _value, $Res Function(_Refresh) _then)
      : super(_value, (v) => _then(v as _Refresh));

  @override
  _Refresh get _value => super._value as _Refresh;
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'KeyedRequestType.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String requestKey) next,
    required TResult Function(String requestKey) prev,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String requestKey)? next,
    TResult Function(String requestKey)? prev,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String requestKey)? next,
    TResult Function(String requestKey)? prev,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Next value) next,
    required TResult Function(_Prev value) prev,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Next value)? next,
    TResult Function(_Prev value)? prev,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Next value)? next,
    TResult Function(_Prev value)? prev,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements KeyedRequestType {
  const factory _Refresh() = _$_Refresh;
}

/// @nodoc
abstract class _$NextCopyWith<$Res> {
  factory _$NextCopyWith(_Next value, $Res Function(_Next) then) =
      __$NextCopyWithImpl<$Res>;
  $Res call({String requestKey});
}

/// @nodoc
class __$NextCopyWithImpl<$Res> extends _$KeyedRequestTypeCopyWithImpl<$Res>
    implements _$NextCopyWith<$Res> {
  __$NextCopyWithImpl(_Next _value, $Res Function(_Next) _then)
      : super(_value, (v) => _then(v as _Next));

  @override
  _Next get _value => super._value as _Next;

  @override
  $Res call({
    Object? requestKey = freezed,
  }) {
    return _then(_Next(
      requestKey == freezed
          ? _value.requestKey
          : requestKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Next implements _Next {
  const _$_Next(this.requestKey);

  @override
  final String requestKey;

  @override
  String toString() {
    return 'KeyedRequestType.next(requestKey: $requestKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Next &&
            (identical(other.requestKey, requestKey) ||
                other.requestKey == requestKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestKey);

  @JsonKey(ignore: true)
  @override
  _$NextCopyWith<_Next> get copyWith =>
      __$NextCopyWithImpl<_Next>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String requestKey) next,
    required TResult Function(String requestKey) prev,
  }) {
    return next(requestKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String requestKey)? next,
    TResult Function(String requestKey)? prev,
  }) {
    return next?.call(requestKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String requestKey)? next,
    TResult Function(String requestKey)? prev,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(requestKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Next value) next,
    required TResult Function(_Prev value) prev,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Next value)? next,
    TResult Function(_Prev value)? prev,
  }) {
    return next?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Next value)? next,
    TResult Function(_Prev value)? prev,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(this);
    }
    return orElse();
  }
}

abstract class _Next implements KeyedRequestType {
  const factory _Next(String requestKey) = _$_Next;

  String get requestKey;
  @JsonKey(ignore: true)
  _$NextCopyWith<_Next> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PrevCopyWith<$Res> {
  factory _$PrevCopyWith(_Prev value, $Res Function(_Prev) then) =
      __$PrevCopyWithImpl<$Res>;
  $Res call({String requestKey});
}

/// @nodoc
class __$PrevCopyWithImpl<$Res> extends _$KeyedRequestTypeCopyWithImpl<$Res>
    implements _$PrevCopyWith<$Res> {
  __$PrevCopyWithImpl(_Prev _value, $Res Function(_Prev) _then)
      : super(_value, (v) => _then(v as _Prev));

  @override
  _Prev get _value => super._value as _Prev;

  @override
  $Res call({
    Object? requestKey = freezed,
  }) {
    return _then(_Prev(
      requestKey == freezed
          ? _value.requestKey
          : requestKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Prev implements _Prev {
  const _$_Prev(this.requestKey);

  @override
  final String requestKey;

  @override
  String toString() {
    return 'KeyedRequestType.prev(requestKey: $requestKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Prev &&
            (identical(other.requestKey, requestKey) ||
                other.requestKey == requestKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestKey);

  @JsonKey(ignore: true)
  @override
  _$PrevCopyWith<_Prev> get copyWith =>
      __$PrevCopyWithImpl<_Prev>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String requestKey) next,
    required TResult Function(String requestKey) prev,
  }) {
    return prev(requestKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String requestKey)? next,
    TResult Function(String requestKey)? prev,
  }) {
    return prev?.call(requestKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String requestKey)? next,
    TResult Function(String requestKey)? prev,
    required TResult orElse(),
  }) {
    if (prev != null) {
      return prev(requestKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Next value) next,
    required TResult Function(_Prev value) prev,
  }) {
    return prev(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Next value)? next,
    TResult Function(_Prev value)? prev,
  }) {
    return prev?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Next value)? next,
    TResult Function(_Prev value)? prev,
    required TResult orElse(),
  }) {
    if (prev != null) {
      return prev(this);
    }
    return orElse();
  }
}

abstract class _Prev implements KeyedRequestType {
  const factory _Prev(String requestKey) = _$_Prev;

  String get requestKey;
  @JsonKey(ignore: true)
  _$PrevCopyWith<_Prev> get copyWith => throw _privateConstructorUsedError;
}
