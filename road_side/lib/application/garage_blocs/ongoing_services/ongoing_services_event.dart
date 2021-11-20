part of 'ongoing_services_bloc.dart';

@immutable
abstract class OngoingServicesEvent {}

class AcceptIncomingRequestPressed extends OngoingServicesEvent{
  final String OrderId;
  AcceptIncomingRequestPressed(this.OrderId);
}

class RejectIncomingRequestPressed extends OngoingServicesEvent{
  final String OrderId;
  RejectIncomingRequestPressed(this.OrderId);
}

//TODO - The application requests for the incoming_requests list and ongoing_services list
class OngoingServicesReloaded extends OngoingServicesEvent{}