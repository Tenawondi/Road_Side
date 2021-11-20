import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:road_side/models/garage/GarageModel.dart';
import 'package:road_side/repository/location_repository/ILocationRepository.dart';

part 'order_page_event.dart';

part 'order_page_state.dart';


class OrderPageBloc extends Bloc<OrderPageEvent, OrderPageState> {
  final ILocationRepository locationRepository;
  OrderPageBloc({required this.locationRepository}) : super(InitialOrderPageState());

  @override
  Stream<OrderPageState> mapEventToState(
    OrderPageEvent event,
  ) async* {
    if(event is SearchGaragePressed){
      yield* _getNearbyGarages(event);
    }
  }

  Stream<OrderPageState> _getNearbyGarages(SearchGaragePressed searchGaragePressed) async* {

    yield LoadingGaragesOrderPageState();
    List<Garage> garageList = await locationRepository.getNearByGarages(searchGaragePressed.location);
    yield LoadedGaragesOrderPageState(garageList: garageList);


  }
//TODO autocomplete for location page
}
