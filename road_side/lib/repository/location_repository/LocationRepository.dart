import 'package:road_side/data_provider/location_provider/ILocationProvider.dart';
import 'package:road_side/models/garage/GarageModel.dart';
import 'package:road_side/models/location/LocationModel.dart';
import 'package:road_side/repository/location_repository/ILocationRepository.dart';

class LocationRepository implements ILocationRepository{
  final ILocationProvider _locationProvider;

  LocationRepository(this._locationProvider);

  @override
  Future<List<Location>> getLocations() {
    return _locationProvider.getLocations();
  }

  @override
  Future<List<Garage>> getNearByGarages(String location) {
    return _locationProvider.getNearByGarages(location);
  }

}