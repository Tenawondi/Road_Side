import 'package:road_side/domain/core/failures.dart';

class UnExpectedValueError extends Error{
  final ValueFailure valueFailure;

  UnExpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = 'Encountered Failure. Terminating...';
    return Error.safeToString('$explanation with failure $valueFailure');
  }
}