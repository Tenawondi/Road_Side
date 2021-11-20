part of 'register_form_bloc.dart';

@freezed
abstract class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    required String firstName,
    required String lastName,
    required String username,
    required String phoneNumber,
    required EmailAddress emailAddress,
    required Password password,
    required Password confirmPassword,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _RegisterFormState;

  factory RegisterFormState.initial() => RegisterFormState(
      firstName: '',
      lastName: '',
      username: '',
      phoneNumber: '',
      emailAddress: EmailAddress(''),
      password: Password(''),
      confirmPassword: Password(''),
      showErrorMessages: false,
      isSubmitting: false,
      authFailureOrSuccessOption: none());
}