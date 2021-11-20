import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:road_side/domain/auth/i_auth_facade.dart';
import 'package:road_side/repository/order_repository/IOrderRepository.dart';

part 'garage_detail_event.dart';
part 'garage_detail_state.dart';

class GarageDetailBloc extends Bloc<GarageDetailEvent, GarageDetailState> {
  final IOrderRepository orderRepository;
  final IAuthFacade authFacade;
  late final user_id;
  GarageDetailBloc(this.orderRepository, this.authFacade) : super(GarageDetailInitial());

  @override
  Stream<GarageDetailState> mapEventToState(
    GarageDetailEvent event,
  ) async* {
  if( event is OrderGaragePressed ){
    final user = await authFacade.getSignedInUser();
    user.fold((l) async* {
      yield ErrorGarageOrder();
    }, (user) async*{
      user_id = user.Id;
    });

    final order = await orderRepository.placeOrder(user_id, event.garage_id, event.service_id);

  }
  }
}
