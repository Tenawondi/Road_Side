import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'ongoing_service_detail_event.dart';
part 'ongoing_service_detail_state.dart';

class OngoingServiceDetailBloc extends Bloc<OngoingServiceDetailEvent, OngoingServiceDetailState> {
  //TODO - Fetch the order details and set the isComplete status

  late bool isComplete; //If Order.status == Complete - set to true
  OngoingServiceDetailBloc() : super(OngoingServiceDetailInitial(isComplete: false));

  @override
  Stream<OngoingServiceDetailState> mapEventToState(
    OngoingServiceDetailEvent event,
  ) async* {
    if( event is SetStatusCompleteEvent){
      yield* _mapSetStatusCompleteToState(event);
    }
  }

  Stream<OngoingServiceDetailState> _mapSetStatusCompleteToState(OngoingServiceDetailEvent setComplete) async*{
    //TODO yield the state
    //TODO Update the status to the api
  }
}