import 'package:dartz/dartz.dart';
import 'package:road_side/domain/auth/auth_failure.dart';
import 'package:road_side/models/register_credential/RegisterCredential.dart';
import 'package:road_side/models/self_garage/SelfGarageModel.dart';
import 'package:road_side/models/user/UserModel.dart';
import 'package:road_side/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<Unit, User>> getSignedInUser();
  Future<Either<Unit, SelfGarage>> getSignedInGarage();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(RegisterCredential credential);
  Future<Either<AuthFailure, Unit>> signInWithUsernameAndPassword({
    required String username,
    required String password,
    required String role,
  });
  Future<void> signOut(String token);

}
