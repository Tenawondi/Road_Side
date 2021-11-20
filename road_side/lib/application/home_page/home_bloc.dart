import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:road_side/models/garage/GarageModel.dart';
import 'package:road_side/models/service/ServiceModel.dart';
import 'package:road_side/repository/garage_repository/IGarageRepository.dart';
import 'package:road_side/repository/service_repository/IServiceRepository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IGarageRepository garageRepository;
  final IServiceRepository serviceRepository;

  HomeBloc({required this.garageRepository, required this.serviceRepository})
      : super(HomeInitial());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield LoadingHomePageState();

    List<Garage> garages = await garageRepository.getGarages();
    List<Service> services = await serviceRepository.getServices();

    yield LoadedHomePageState(garageList: garages, serviceList: services);
  }
}
