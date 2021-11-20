part of 'sign_in_form_bloc.dart';

@immutable
abstract class SignInFormEvent {}

class SignInWithUsernameAndPasswordPressed extends SignInFormEvent{
  final String username;
  final String password;

  SignInWithUsernameAndPasswordPressed({
    required this.username,
    required this.password,
  });
}
