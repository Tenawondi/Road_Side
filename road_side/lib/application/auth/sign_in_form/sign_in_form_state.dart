part of 'sign_in_form_bloc.dart';

@immutable
abstract class SignInFormState {}

class InitialSignInState extends SignInFormState{}

class LoadingSignInState extends SignInFormState{}

class  UserSignInSuccess extends SignInFormState{}

class  GarageSignInSuccess extends SignInFormState{}

class  AdministratorSignInSuccess extends SignInFormState{}

class  SignInError extends SignInFormState{
  final String errorMessage;

  SignInError({required this.errorMessage});

}

