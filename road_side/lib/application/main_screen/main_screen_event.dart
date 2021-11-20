part of 'main_screen_bloc.dart';

@immutable
abstract class MainScreenEvent {}

class AddGarageToFavoritesEvent extends MainScreenEvent {
  final String GarageId;

  AddGarageToFavoritesEvent(this.GarageId);
}
