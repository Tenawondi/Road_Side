part of 'garage_profile_bloc.dart';

@immutable
abstract class GarageProfileState {
  String Name;
  String Username;
  String ImageUrl;
  List ContactNumbers;
  List WorkingHours;
  List AvailableServices;

  GarageProfileState({
    required this.Name,
    required this.Username,
    required this.ImageUrl,
    required this.ContactNumbers,
    required this.WorkingHours,
    required this.AvailableServices,
  });
}

class GarageProfileInitial extends GarageProfileState {
  GarageProfileInitial(
      {required String Name,
      required String Username,
      required String ImageUrl,
      required List ContactNumbers,
      required List WorkingHours,
      required List AvailableServices})
      : super(
          Name: Name,
          Username: Username,
          ImageUrl: ImageUrl,
          ContactNumbers: ContactNumbers,
          WorkingHours: WorkingHours,
          AvailableServices: AvailableServices,
        );
}