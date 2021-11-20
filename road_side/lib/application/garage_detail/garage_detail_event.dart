part of 'garage_detail_bloc.dart';

@immutable
abstract class GarageDetailEvent {}

class OrderGaragePressed extends GarageDetailEvent{
  String garage_id;
  String service_id;

  OrderGaragePressed({required this.garage_id, required this.service_id});
}