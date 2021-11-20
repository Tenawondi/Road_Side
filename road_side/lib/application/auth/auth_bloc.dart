import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:road_side/domain/auth/i_auth_facade.dart';


part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  //TODO - Configure token signOut
  final IAuthFacade _authFacade;
  late String token;
  AuthBloc(this._authFacade) : super(AuthState.initial());

  @override
  AuthState get initialState => const AuthState.initial();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    event.map(authCheckRequested: (e) async* {
      final userOption = await _authFacade.getSignedInUser();
      print("Checking authentication");
      yield userOption.fold((l) async*{
        yield const AuthState.unauthenticated();
        print("Unauthenticated");
      },
      (r) async* {
      yield const AuthState.authenticated();
      print("authenticated");
      });
    }, signedOut: (e) async* {
      await _authFacade.signOut(token);
      yield const AuthState.unauthenticated();
    });
  }
}
