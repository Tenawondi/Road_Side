part of 'order_page_bloc.dart';

@immutable
abstract class OrderPageState {}

class InitialOrderPageState extends OrderPageState{}

class LoadingGaragesOrderPageState extends OrderPageState{}

class LoadedGaragesOrderPageState extends OrderPageState{
  List<Garage> garageList;
  LoadedGaragesOrderPageState({required this.garageList});
}

class LoadingGaragesFailedOrderPageState extends OrderPageState{}
