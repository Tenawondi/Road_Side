import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:road_side/domain/auth/auth_failure.dart';
import 'package:road_side/models/register_credential/RegisterCredential.dart';
import 'package:road_side/domain/auth/i_auth_facade.dart';
import 'package:road_side/domain/auth/value_objects.dart';
import 'package:road_side/domain/core/value_validators.dart';

part 'register_form_event.dart';

part 'register_form_state.dart';

part 'register_form_bloc.freezed.dart';

@injectable
class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  final IAuthFacade _authFacade;

  RegisterFormBloc(this._authFacade) : super(RegisterFormState.initial());

  @override
  Stream<RegisterFormState> mapEventToState(
    RegisterFormEvent event,
  ) async* {
    yield* event.map(
      firstNameChanged: (e) async* {
        yield state.copyWith(
          firstName: e.firstNameStr,
          authFailureOrSuccessOption: none(),
        );
      },
      lastNameChanged: (e) async* {
        yield state.copyWith(
          lastName: e.lastNameStr,
          authFailureOrSuccessOption: none(),
        );
      },
      usernameChanged: (e) async* {
        yield state.copyWith(
          username: e.usernameStr,
          authFailureOrSuccessOption: none(),
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          phoneNumber: e.phoneStr,
          authFailureOrSuccessOption: none(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      confirmPasswordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.changedPasswordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
            _authFacade.registerWithEmailAndPassword);
      },
    );
  }

  Stream<RegisterFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function(RegisterCredential credential)
        forwardedCall,
  ) async* {
    late Either<AuthFailure, Unit> failureOrSuccess;

    // final isEmailValid = state.emailAddress.isValid();
    // final isPasswordValid = state.password.isValid();
    // final isConfirmValid = validateConfirmPassword(
    //             state.password.toString(), state.confirmPassword.toString())
    //         .isRight()
    //     ? true
    //     : false;

    //if (isEmailValid && isPasswordValid && isConfirmValid) {
      RegisterCredential credential = RegisterCredential(
        first_name: state.firstName,
        last_name: state.lastName,
        phone_number: state.phoneNumber,
        user_name: state.username,
        email: state.emailAddress.toString(),
        password: state.password.toString(),
      );
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(credential);
   // }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      // optionOf is equivalent to:
      // authFailureOrSuccessOption:failureOrSuccess == null ? none() : some(failureOrSuccess)
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
