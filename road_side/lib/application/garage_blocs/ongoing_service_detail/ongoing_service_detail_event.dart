part of 'ongoing_service_detail_bloc.dart';

@immutable
abstract class OngoingServiceDetailEvent {}
class SetStatusCompleteEvent extends OngoingServiceDetailEvent{
  final String OrderId;
  SetStatusCompleteEvent(this.OrderId);
}