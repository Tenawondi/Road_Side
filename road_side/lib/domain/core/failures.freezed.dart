// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  ShortUsername<T> shortUsername<T>({required T failedValue}) {
    return ShortUsername<T>(
      failedValue: failedValue,
    );
  }

  MustBeginWithLetter<T> mustBeginWithLetter<T>({required T failedValue}) {
    return MustBeginWithLetter<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  MustContainCapital<T> mustContainCapital<T>({required T failedValue}) {
    return MustContainCapital<T>(
      failedValue: failedValue,
    );
  }

  MustContainDigit<T> mustContainDigit<T>({required T failedValue}) {
    return MustContainDigit<T>(
      failedValue: failedValue,
    );
  }

  InvalidConfirmPassword<T> passwordsMustMatch<T>({required T failedValue}) {
    return InvalidConfirmPassword<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) mustBeginWithLetter,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) mustContainCapital,
    required TResult Function(T failedValue) mustContainDigit,
    required TResult Function(T failedValue) passwordsMustMatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? mustBeginWithLetter,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? mustContainCapital,
    TResult Function(T failedValue)? mustContainDigit,
    TResult Function(T failedValue)? passwordsMustMatch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortUsername<T> value) shortUsername,
    required TResult Function(MustBeginWithLetter<T> value) mustBeginWithLetter,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(MustContainCapital<T> value) mustContainCapital,
    required TResult Function(MustContainDigit<T> value) mustContainDigit,
    required TResult Function(InvalidConfirmPassword<T> value)
        passwordsMustMatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortUsername<T> value)? shortUsername,
    TResult Function(MustBeginWithLetter<T> value)? mustBeginWithLetter,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(MustContainCapital<T> value)? mustContainCapital,
    TResult Function(MustContainDigit<T> value)? mustContainDigit,
    TResult Function(InvalidConfirmPassword<T> value)? passwordsMustMatch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) mustBeginWithLetter,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) mustContainCapital,
    required TResult Function(T failedValue) mustContainDigit,
    required TResult Function(T failedValue) passwordsMustMatch,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? mustBeginWithLetter,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? mustContainCapital,
    TResult Function(T failedValue)? mustContainDigit,
    TResult Function(T failedValue)? passwordsMustMatch,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortUsername<T> value) shortUsername,
    required TResult Function(MustBeginWithLetter<T> value) mustBeginWithLetter,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(MustContainCapital<T> value) mustContainCapital,
    required TResult Function(MustContainDigit<T> value) mustContainDigit,
    required TResult Function(InvalidConfirmPassword<T> value)
        passwordsMustMatch,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortUsername<T> value)? shortUsername,
    TResult Function(MustBeginWithLetter<T> value)? mustBeginWithLetter,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(MustContainCapital<T> value)? mustContainCapital,
    TResult Function(MustContainDigit<T> value)? mustContainDigit,
    TResult Function(InvalidConfirmPassword<T> value)? passwordsMustMatch,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortUsernameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortUsernameCopyWith(
          ShortUsername<T> value, $Res Function(ShortUsername<T>) then) =
      _$ShortUsernameCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ShortUsernameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortUsernameCopyWith<T, $Res> {
  _$ShortUsernameCopyWithImpl(
      ShortUsername<T> _value, $Res Function(ShortUsername<T>) _then)
      : super(_value, (v) => _then(v as ShortUsername<T>));

  @override
  ShortUsername<T> get _value => super._value as ShortUsername<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ShortUsername<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortUsername<T> implements ShortUsername<T> {
  const _$ShortUsername({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortUsername(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortUsername<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ShortUsernameCopyWith<T, ShortUsername<T>> get copyWith =>
      _$ShortUsernameCopyWithImpl<T, ShortUsername<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) mustBeginWithLetter,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) mustContainCapital,
    required TResult Function(T failedValue) mustContainDigit,
    required TResult Function(T failedValue) passwordsMustMatch,
  }) {
    return shortUsername(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? mustBeginWithLetter,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? mustContainCapital,
    TResult Function(T failedValue)? mustContainDigit,
    TResult Function(T failedValue)? passwordsMustMatch,
    required TResult orElse(),
  }) {
    if (shortUsername != null) {
      return shortUsername(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortUsername<T> value) shortUsername,
    required TResult Function(MustBeginWithLetter<T> value) mustBeginWithLetter,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(MustContainCapital<T> value) mustContainCapital,
    required TResult Function(MustContainDigit<T> value) mustContainDigit,
    required TResult Function(InvalidConfirmPassword<T> value)
        passwordsMustMatch,
  }) {
    return shortUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortUsername<T> value)? shortUsername,
    TResult Function(MustBeginWithLetter<T> value)? mustBeginWithLetter,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(MustContainCapital<T> value)? mustContainCapital,
    TResult Function(MustContainDigit<T> value)? mustContainDigit,
    TResult Function(InvalidConfirmPassword<T> value)? passwordsMustMatch,
    required TResult orElse(),
  }) {
    if (shortUsername != null) {
      return shortUsername(this);
    }
    return orElse();
  }
}

abstract class ShortUsername<T> implements ValueFailure<T> {
  const factory ShortUsername({required T failedValue}) = _$ShortUsername<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShortUsernameCopyWith<T, ShortUsername<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MustBeginWithLetterCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $MustBeginWithLetterCopyWith(MustBeginWithLetter<T> value,
          $Res Function(MustBeginWithLetter<T>) then) =
      _$MustBeginWithLetterCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$MustBeginWithLetterCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MustBeginWithLetterCopyWith<T, $Res> {
  _$MustBeginWithLetterCopyWithImpl(MustBeginWithLetter<T> _value,
      $Res Function(MustBeginWithLetter<T>) _then)
      : super(_value, (v) => _then(v as MustBeginWithLetter<T>));

  @override
  MustBeginWithLetter<T> get _value => super._value as MustBeginWithLetter<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(MustBeginWithLetter<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$MustBeginWithLetter<T> implements MustBeginWithLetter<T> {
  const _$MustBeginWithLetter({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.mustBeginWithLetter(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MustBeginWithLetter<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $MustBeginWithLetterCopyWith<T, MustBeginWithLetter<T>> get copyWith =>
      _$MustBeginWithLetterCopyWithImpl<T, MustBeginWithLetter<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) mustBeginWithLetter,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) mustContainCapital,
    required TResult Function(T failedValue) mustContainDigit,
    required TResult Function(T failedValue) passwordsMustMatch,
  }) {
    return mustBeginWithLetter(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? mustBeginWithLetter,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? mustContainCapital,
    TResult Function(T failedValue)? mustContainDigit,
    TResult Function(T failedValue)? passwordsMustMatch,
    required TResult orElse(),
  }) {
    if (mustBeginWithLetter != null) {
      return mustBeginWithLetter(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortUsername<T> value) shortUsername,
    required TResult Function(MustBeginWithLetter<T> value) mustBeginWithLetter,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(MustContainCapital<T> value) mustContainCapital,
    required TResult Function(MustContainDigit<T> value) mustContainDigit,
    required TResult Function(InvalidConfirmPassword<T> value)
        passwordsMustMatch,
  }) {
    return mustBeginWithLetter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortUsername<T> value)? shortUsername,
    TResult Function(MustBeginWithLetter<T> value)? mustBeginWithLetter,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(MustContainCapital<T> value)? mustContainCapital,
    TResult Function(MustContainDigit<T> value)? mustContainDigit,
    TResult Function(InvalidConfirmPassword<T> value)? passwordsMustMatch,
    required TResult orElse(),
  }) {
    if (mustBeginWithLetter != null) {
      return mustBeginWithLetter(this);
    }
    return orElse();
  }
}

abstract class MustBeginWithLetter<T> implements ValueFailure<T> {
  const factory MustBeginWithLetter({required T failedValue}) =
      _$MustBeginWithLetter<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MustBeginWithLetterCopyWith<T, MustBeginWithLetter<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) mustBeginWithLetter,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) mustContainCapital,
    required TResult Function(T failedValue) mustContainDigit,
    required TResult Function(T failedValue) passwordsMustMatch,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? mustBeginWithLetter,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? mustContainCapital,
    TResult Function(T failedValue)? mustContainDigit,
    TResult Function(T failedValue)? passwordsMustMatch,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortUsername<T> value) shortUsername,
    required TResult Function(MustBeginWithLetter<T> value) mustBeginWithLetter,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(MustContainCapital<T> value) mustContainCapital,
    required TResult Function(MustContainDigit<T> value) mustContainDigit,
    required TResult Function(InvalidConfirmPassword<T> value)
        passwordsMustMatch,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortUsername<T> value)? shortUsername,
    TResult Function(MustBeginWithLetter<T> value)? mustBeginWithLetter,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(MustContainCapital<T> value)? mustContainCapital,
    TResult Function(MustContainDigit<T> value)? mustContainDigit,
    TResult Function(InvalidConfirmPassword<T> value)? passwordsMustMatch,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required T failedValue}) = _$ShortPassword<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MustContainCapitalCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $MustContainCapitalCopyWith(MustContainCapital<T> value,
          $Res Function(MustContainCapital<T>) then) =
      _$MustContainCapitalCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$MustContainCapitalCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MustContainCapitalCopyWith<T, $Res> {
  _$MustContainCapitalCopyWithImpl(
      MustContainCapital<T> _value, $Res Function(MustContainCapital<T>) _then)
      : super(_value, (v) => _then(v as MustContainCapital<T>));

  @override
  MustContainCapital<T> get _value => super._value as MustContainCapital<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(MustContainCapital<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$MustContainCapital<T> implements MustContainCapital<T> {
  const _$MustContainCapital({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.mustContainCapital(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MustContainCapital<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $MustContainCapitalCopyWith<T, MustContainCapital<T>> get copyWith =>
      _$MustContainCapitalCopyWithImpl<T, MustContainCapital<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) mustBeginWithLetter,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) mustContainCapital,
    required TResult Function(T failedValue) mustContainDigit,
    required TResult Function(T failedValue) passwordsMustMatch,
  }) {
    return mustContainCapital(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? mustBeginWithLetter,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? mustContainCapital,
    TResult Function(T failedValue)? mustContainDigit,
    TResult Function(T failedValue)? passwordsMustMatch,
    required TResult orElse(),
  }) {
    if (mustContainCapital != null) {
      return mustContainCapital(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortUsername<T> value) shortUsername,
    required TResult Function(MustBeginWithLetter<T> value) mustBeginWithLetter,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(MustContainCapital<T> value) mustContainCapital,
    required TResult Function(MustContainDigit<T> value) mustContainDigit,
    required TResult Function(InvalidConfirmPassword<T> value)
        passwordsMustMatch,
  }) {
    return mustContainCapital(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortUsername<T> value)? shortUsername,
    TResult Function(MustBeginWithLetter<T> value)? mustBeginWithLetter,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(MustContainCapital<T> value)? mustContainCapital,
    TResult Function(MustContainDigit<T> value)? mustContainDigit,
    TResult Function(InvalidConfirmPassword<T> value)? passwordsMustMatch,
    required TResult orElse(),
  }) {
    if (mustContainCapital != null) {
      return mustContainCapital(this);
    }
    return orElse();
  }
}

abstract class MustContainCapital<T> implements ValueFailure<T> {
  const factory MustContainCapital({required T failedValue}) =
      _$MustContainCapital<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MustContainCapitalCopyWith<T, MustContainCapital<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MustContainDigitCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $MustContainDigitCopyWith(
          MustContainDigit<T> value, $Res Function(MustContainDigit<T>) then) =
      _$MustContainDigitCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$MustContainDigitCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MustContainDigitCopyWith<T, $Res> {
  _$MustContainDigitCopyWithImpl(
      MustContainDigit<T> _value, $Res Function(MustContainDigit<T>) _then)
      : super(_value, (v) => _then(v as MustContainDigit<T>));

  @override
  MustContainDigit<T> get _value => super._value as MustContainDigit<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(MustContainDigit<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$MustContainDigit<T> implements MustContainDigit<T> {
  const _$MustContainDigit({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.mustContainDigit(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MustContainDigit<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $MustContainDigitCopyWith<T, MustContainDigit<T>> get copyWith =>
      _$MustContainDigitCopyWithImpl<T, MustContainDigit<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) mustBeginWithLetter,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) mustContainCapital,
    required TResult Function(T failedValue) mustContainDigit,
    required TResult Function(T failedValue) passwordsMustMatch,
  }) {
    return mustContainDigit(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? mustBeginWithLetter,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? mustContainCapital,
    TResult Function(T failedValue)? mustContainDigit,
    TResult Function(T failedValue)? passwordsMustMatch,
    required TResult orElse(),
  }) {
    if (mustContainDigit != null) {
      return mustContainDigit(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortUsername<T> value) shortUsername,
    required TResult Function(MustBeginWithLetter<T> value) mustBeginWithLetter,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(MustContainCapital<T> value) mustContainCapital,
    required TResult Function(MustContainDigit<T> value) mustContainDigit,
    required TResult Function(InvalidConfirmPassword<T> value)
        passwordsMustMatch,
  }) {
    return mustContainDigit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortUsername<T> value)? shortUsername,
    TResult Function(MustBeginWithLetter<T> value)? mustBeginWithLetter,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(MustContainCapital<T> value)? mustContainCapital,
    TResult Function(MustContainDigit<T> value)? mustContainDigit,
    TResult Function(InvalidConfirmPassword<T> value)? passwordsMustMatch,
    required TResult orElse(),
  }) {
    if (mustContainDigit != null) {
      return mustContainDigit(this);
    }
    return orElse();
  }
}

abstract class MustContainDigit<T> implements ValueFailure<T> {
  const factory MustContainDigit({required T failedValue}) =
      _$MustContainDigit<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MustContainDigitCopyWith<T, MustContainDigit<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidConfirmPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidConfirmPasswordCopyWith(InvalidConfirmPassword<T> value,
          $Res Function(InvalidConfirmPassword<T>) then) =
      _$InvalidConfirmPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidConfirmPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidConfirmPasswordCopyWith<T, $Res> {
  _$InvalidConfirmPasswordCopyWithImpl(InvalidConfirmPassword<T> _value,
      $Res Function(InvalidConfirmPassword<T>) _then)
      : super(_value, (v) => _then(v as InvalidConfirmPassword<T>));

  @override
  InvalidConfirmPassword<T> get _value =>
      super._value as InvalidConfirmPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidConfirmPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidConfirmPassword<T> implements InvalidConfirmPassword<T> {
  const _$InvalidConfirmPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.passwordsMustMatch(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidConfirmPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidConfirmPasswordCopyWith<T, InvalidConfirmPassword<T>> get copyWith =>
      _$InvalidConfirmPasswordCopyWithImpl<T, InvalidConfirmPassword<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) mustBeginWithLetter,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) mustContainCapital,
    required TResult Function(T failedValue) mustContainDigit,
    required TResult Function(T failedValue) passwordsMustMatch,
  }) {
    return passwordsMustMatch(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? mustBeginWithLetter,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? mustContainCapital,
    TResult Function(T failedValue)? mustContainDigit,
    TResult Function(T failedValue)? passwordsMustMatch,
    required TResult orElse(),
  }) {
    if (passwordsMustMatch != null) {
      return passwordsMustMatch(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortUsername<T> value) shortUsername,
    required TResult Function(MustBeginWithLetter<T> value) mustBeginWithLetter,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(MustContainCapital<T> value) mustContainCapital,
    required TResult Function(MustContainDigit<T> value) mustContainDigit,
    required TResult Function(InvalidConfirmPassword<T> value)
        passwordsMustMatch,
  }) {
    return passwordsMustMatch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortUsername<T> value)? shortUsername,
    TResult Function(MustBeginWithLetter<T> value)? mustBeginWithLetter,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(MustContainCapital<T> value)? mustContainCapital,
    TResult Function(MustContainDigit<T> value)? mustContainDigit,
    TResult Function(InvalidConfirmPassword<T> value)? passwordsMustMatch,
    required TResult orElse(),
  }) {
    if (passwordsMustMatch != null) {
      return passwordsMustMatch(this);
    }
    return orElse();
  }
}

abstract class InvalidConfirmPassword<T> implements ValueFailure<T> {
  const factory InvalidConfirmPassword({required T failedValue}) =
      _$InvalidConfirmPassword<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidConfirmPasswordCopyWith<T, InvalidConfirmPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
