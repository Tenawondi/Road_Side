import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:road_side/data_provider/location_provider/LocationApiProvider.dart';
import 'package:road_side/data_provider/order_provider/OrderApiProvider.dart';
import 'package:road_side/domain/auth/i_auth_facade.dart';
import 'package:road_side/domain/auth/auth_failure.dart';
import 'package:road_side/repository/location_repository/LocationRepository.dart';
import 'package:road_side/repository/order_repository/OrderRepository.dart';

part 'sign_in_form_event.dart';

part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  final String role = "user";

  SignInFormBloc(this._authFacade) : super(InitialSignInState());

  SignInFormState get initialState => InitialSignInState();

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    if (event is SignInWithUsernameAndPasswordPressed) {
      yield LoadingSignInState();
      // final orders = await OrderRepository(OrderApiProvider(Client())).placeOrder(order);
      // print(orders);
      yield* _performActionOnAuthFacadeWithUsernameAndPassword(
          _authFacade.signInWithUsernameAndPassword, event, this.role);
    }
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithUsernameAndPassword(
    Future<Either<AuthFailure, Unit>> Function(
      {required String username, required String password, required String role}
    ) forwardedCall, SignInWithUsernameAndPasswordPressed event, String role
  )async*{

    late Either<AuthFailure, Unit> failureOrSuccess;

    failureOrSuccess = await forwardedCall(
          username: event.username, password: event.password, role: role);
    yield* failureOrSuccess.fold((l) async*{
      yield SignInError(errorMessage: "Unknown Error Occurred");
    }, (r) async* {

      final user = await _authFacade.getSignedInUser();
      yield* user.fold((l) async*{
        yield SignInError(errorMessage: "Unknown Error");
      }, (user)async*{
        if (user.Role == "admin"){
          yield AdministratorSignInSuccess();
        } else if (user.Role == "garage"){
          yield GarageSignInSuccess();
        } else if (user.Role == "user"){
          yield UserSignInSuccess();
        }
      });

    });
    
    //  yield state.copyWith(
    //   isSubmitting: false,
    //   showErrorMessages: true,
    //   // optionOf is equivalent to:
    //   // authFailureOrSuccessOption:failureOrSuccess == null ? none() : some(failureOrSuccess)
    //   authFailureOrSuccessOption: optionOf(failureOrSuccess),
    // );
  }

}


