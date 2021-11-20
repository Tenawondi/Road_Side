import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'garage_profile_event.dart';

part 'garage_profile_state.dart';

class GarageProfileBloc extends Bloc<GarageProfileEvent, GarageProfileState> {
  //TODO - Fetch the garage info from the local storage

  GarageProfileBloc()
      : super(GarageProfileInitial(
          Name: '',
          Username: '',
          ImageUrl: '',
          ContactNumbers: [],
          WorkingHours: [],
          AvailableServices: [],
        ));

  @override
  Stream<GarageProfileState> mapEventToState(
    GarageProfileEvent event,
  ) async* {
    if (event is SaveProfilePressed) {
      _mapSaveProfileToState(event);
    }
  }

  Stream<GarageProfileState> _mapSaveProfileToState(
      //TODO - Send the update to the api
      //TODO - Update the state
      GarageProfileEvent profileEvent) async* {}
}