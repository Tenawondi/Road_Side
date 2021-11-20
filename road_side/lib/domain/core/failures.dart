import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortUsername({
    required T failedValue,
  }) = ShortUsername<T>;

  const factory ValueFailure.mustBeginWithLetter({
    required T failedValue,
  }) = MustBeginWithLetter<T>;

  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;

  const factory ValueFailure.mustContainCapital({
    required T failedValue,
  }) = MustContainCapital<T>;

  const factory ValueFailure.mustContainDigit({
    required T failedValue,
  }) = MustContainDigit<T>;

  const factory ValueFailure.passwordsMustMatch({
    required T failedValue,
  }) = InvalidConfirmPassword<T>;
}
