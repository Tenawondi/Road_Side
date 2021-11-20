import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:road_side/domain/auth/i_auth_facade.dart';
import 'package:road_side/models/order/OrderModel.dart';
import 'package:road_side/repository/garage_repository/IGarageRepository.dart';
import 'package:road_side/repository/order_repository/IOrderRepository.dart';

part 'ongoing_services_event.dart';

part 'ongoing_services_state.dart';

class OngoingServicesBloc
    extends Bloc<OngoingServicesEvent, OngoingServicesState> {
  final IGarageRepository garageRepository;
  final IOrderRepository orderRepository;
  final IAuthFacade authFacade;

  late final garage_id;
  late final incoming_requests;
  late final ongoing_services;

  OngoingServicesBloc(bool IncomingRequestsIsEmpty, this.garageRepository,
      this.authFacade, this.orderRepository)
      : super(OngoingServicesInitial(
            IncomingRequestsIsEmpty: IncomingRequestsIsEmpty));

  @override
  Stream<OngoingServicesState> mapEventToState(
    OngoingServicesEvent event,
  ) async* {
    final garage = await authFacade.getSignedInGarage();
    garage.fold((l) async* {
      yield ErrorLoadingOngoingServices(IncomingRequestsIsEmpty: true);
    }, (garage) async* {
      garage_id = garage.id;
      incoming_requests = garage.incoming_requests;
      ongoing_services = garage.ongoing_services;
    });

    if (event is OngoingServicesReloaded) {
      yield* _mapOngoingReloadedToState(event);
    } else if (event is AcceptIncomingRequestPressed) {
      yield* _mapAcceptRequestToState(event);
    }
  }

  Stream<OngoingServicesState> _mapInitialOngoingState(
      OngoingServicesInitial initial) async* {}

  Stream<OngoingServicesState> _mapOngoingReloadedToState(
      OngoingServicesReloaded reload) async* {
    //TODO - make api calls to incoming services and ongoingservices

    yield OngoingServicesInitial(IncomingRequestsIsEmpty: true);
  }

  Stream<OngoingServicesState> _mapAcceptRequestToState(
      AcceptIncomingRequestPressed accept) async* {


    final pending_order = incoming_requests[accept.OrderId];//accessing the id should be tested
    Order order = await orderRepository.acceptOrder(pending_order);

    //TODO - Update the screen/state to accomodate the new ongoing_services(fetch the ongoing_services list again)

    yield OngoingServicesInitial(IncomingRequestsIsEmpty: true);
  }

  Stream<OngoingServicesState> _mapRejectRequestToState(
      RejectIncomingRequestPressed reject) async* {
    //TODO - Delete the request from incoming_requests

    yield OngoingServicesInitial(IncomingRequestsIsEmpty: true);
  }
}
