import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'ongoing_services_event.dart';
part 'ongoing_services_state.dart';

class OngoingServicesBloc extends Bloc<OngoingServicesEvent, OngoingServicesState> {
  OngoingServicesBloc() : super(OngoingServicesInitial());

  @override
  Stream<OngoingServicesState> mapEventToState(
    OngoingServicesEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
