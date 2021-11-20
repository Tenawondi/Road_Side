part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class LoadingHomePageState extends HomeState{}

class LoadedHomePageState extends HomeState{
  List<Garage> garageList;
  List<Service> serviceList;

  LoadedHomePageState({required this.garageList, required this.serviceList});
}

class LoadingHomePageFailedState extends HomeState{}