import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:road_side/repository/garage_repository/IGarageRepository.dart';

part 'main_screen_event.dart';
part 'main_screen_state.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  IGarageRepository garageRepository;

  MainScreenBloc({required this.garageRepository})
      : super(LoadingMainScreenState());

  @override
  Stream<MainScreenState> mapEventToState(
    MainScreenEvent event,
  ) async* {
    if (event is AddGarageToFavoritesEvent) {
      yield* _mapAddGarageToFavoritesEventToState(event);
    }
  }

  Stream<MainScreenState> _mapAddGarageToFavoritesEventToState(
      AddGarageToFavoritesEvent event) async* {
    final String garageId = event.GarageId;
    final garage = await garageRepository.getGarage(garageId);
    //Todo Implementation toggle favorite garage
  }
}
