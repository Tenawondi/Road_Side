part of 'ongoing_service_detail_bloc.dart';

@immutable
abstract class OngoingServiceDetailState {
  bool isComplete;
  OngoingServiceDetailState({required this.isComplete});
}

class OngoingServiceDetailInitial extends OngoingServiceDetailState {
  OngoingServiceDetailInitial({required bool isComplete}) : super(isComplete: isComplete);
}