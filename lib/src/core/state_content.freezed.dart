// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'state_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StateContentTearOff {
  const _$StateContentTearOff();

  _Stored<T> stored<T>(T value) {
    return _Stored<T>(
      value,
    );
  }

  _NotStored<T> notStored<T>() {
    return _NotStored<T>();
  }
}

/// @nodoc
const $StateContent = _$StateContentTearOff();

/// @nodoc
mixin _$StateContent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) stored,
    required TResult Function() notStored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? stored,
    TResult Function()? notStored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Stored<T> value) stored,
    required TResult Function(_NotStored<T> value) notStored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Stored<T> value)? stored,
    TResult Function(_NotStored<T> value)? notStored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateContentCopyWith<T, $Res> {
  factory $StateContentCopyWith(
          StateContent<T> value, $Res Function(StateContent<T>) then) =
      _$StateContentCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$StateContentCopyWithImpl<T, $Res>
    implements $StateContentCopyWith<T, $Res> {
  _$StateContentCopyWithImpl(this._value, this._then);

  final StateContent<T> _value;
  // ignore: unused_field
  final $Res Function(StateContent<T>) _then;
}

/// @nodoc
abstract class _$StoredCopyWith<T, $Res> {
  factory _$StoredCopyWith(_Stored<T> value, $Res Function(_Stored<T>) then) =
      __$StoredCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class __$StoredCopyWithImpl<T, $Res> extends _$StateContentCopyWithImpl<T, $Res>
    implements _$StoredCopyWith<T, $Res> {
  __$StoredCopyWithImpl(_Stored<T> _value, $Res Function(_Stored<T>) _then)
      : super(_value, (v) => _then(v as _Stored<T>));

  @override
  _Stored<T> get _value => super._value as _Stored<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_Stored<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
class _$_Stored<T> implements _Stored<T> {
  const _$_Stored(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'StateContent<$T>.stored(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Stored<T> &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$StoredCopyWith<T, _Stored<T>> get copyWith =>
      __$StoredCopyWithImpl<T, _Stored<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) stored,
    required TResult Function() notStored,
  }) {
    return stored(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? stored,
    TResult Function()? notStored,
    required TResult orElse(),
  }) {
    if (stored != null) {
      return stored(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Stored<T> value) stored,
    required TResult Function(_NotStored<T> value) notStored,
  }) {
    return stored(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Stored<T> value)? stored,
    TResult Function(_NotStored<T> value)? notStored,
    required TResult orElse(),
  }) {
    if (stored != null) {
      return stored(this);
    }
    return orElse();
  }
}

abstract class _Stored<T> implements StateContent<T> {
  const factory _Stored(T value) = _$_Stored<T>;

  T get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StoredCopyWith<T, _Stored<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NotStoredCopyWith<T, $Res> {
  factory _$NotStoredCopyWith(
          _NotStored<T> value, $Res Function(_NotStored<T>) then) =
      __$NotStoredCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$NotStoredCopyWithImpl<T, $Res>
    extends _$StateContentCopyWithImpl<T, $Res>
    implements _$NotStoredCopyWith<T, $Res> {
  __$NotStoredCopyWithImpl(
      _NotStored<T> _value, $Res Function(_NotStored<T>) _then)
      : super(_value, (v) => _then(v as _NotStored<T>));

  @override
  _NotStored<T> get _value => super._value as _NotStored<T>;
}

/// @nodoc
class _$_NotStored<T> implements _NotStored<T> {
  const _$_NotStored();

  @override
  String toString() {
    return 'StateContent<$T>.notStored()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotStored<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) stored,
    required TResult Function() notStored,
  }) {
    return notStored();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? stored,
    TResult Function()? notStored,
    required TResult orElse(),
  }) {
    if (notStored != null) {
      return notStored();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Stored<T> value) stored,
    required TResult Function(_NotStored<T> value) notStored,
  }) {
    return notStored(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Stored<T> value)? stored,
    TResult Function(_NotStored<T> value)? notStored,
    required TResult orElse(),
  }) {
    if (notStored != null) {
      return notStored(this);
    }
    return orElse();
  }
}

abstract class _NotStored<T> implements StateContent<T> {
  const factory _NotStored() = _$_NotStored<T>;
}
