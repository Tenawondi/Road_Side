part of 'garage_detail_bloc.dart';

@immutable
abstract class GarageDetailState {}

class GarageDetailInitial extends GarageDetailState {}

class ErrorGarageOrder extends GarageDetailEvent{}