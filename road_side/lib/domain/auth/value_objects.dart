import 'package:dartz/dartz.dart';
import 'package:road_side/domain/core/failures.dart';
import 'package:road_side/domain/core/value_objects.dart';
import 'package:road_side/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String>{
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input){
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }
  const EmailAddress._(this.value);

}

class Password extends ValueObject<String>{
  final Either<ValueFailure<String>, String> value;

  factory Password(String input){
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);

}

class Username extends ValueObject<String>{
  final Either<ValueFailure<String>, String> value;

  factory Username(String input){
    assert(input != null);
    return Username._(
      validateUsername(input),
    );
  }

  const Username._(this.value);
}