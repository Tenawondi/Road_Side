import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
  r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUsername(String input){
  //TODO Enforce all the rules
  return right(input);
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (!_shortLength(input)) {
    return left(ValueFailure.shortPassword(failedValue: input));
  } else if (!_mustContainCapital(input)) {
    return left(ValueFailure.mustContainCapital(failedValue: input));
  } else if (!_mustContainDigit(input)) {
    return left(ValueFailure.mustContainDigit(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateConfirmPassword(String original, String input){
  if( original == input ){
    return right(input);
  }
  return left(ValueFailure.passwordsMustMatch(failedValue: input));
}

bool _shortLength(String input) {
  if (input.length >= 6) {
    return true;
  }
  return false;
}

bool _mustContainCapital(String input) {
  var i = 0;
  var character = '';

  while (i < input.length) {
    character = input.substring(i, i + 1);
    if (character == character.toUpperCase()) {
      return true;
    }
  }
  return false;
}

bool _mustContainDigit(String input) {
  var i = 0;
  var character = '';

  while (i < input.length) {
    character = input.substring(i, i + 1);
    if (isDigit(character, 0)) {
      return true;
    }
  }
  return false;
}

bool isDigit(String s, int idx) =>
    "0".compareTo(s[idx]) <= 0 && "9".compareTo(s[idx]) >= 0;