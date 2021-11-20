import 'package:road_side/data_provider/location_provider/ILocationProvider.dart';
import 'package:road_side/models/garage/GarageModel.dart';
import 'package:road_side/models/location/LocationModel.dart';
import 'package:road_side/repository/location_repository/ILocationRepository.dart';

class LocationRepository implements ILocationRepository {
  final ILocationProvider _locationProvider;

  LocationRepository(this._locationProvider);

  Future<Location> createLocation(Location location) async {
    return await _locationProvider.createLocation(location);
  }

  @override
  Future<List<Location>> getLocations() {
    return _locationProvider.getLocations();
  }

  @override
  Future<List<Garage>> getNearByGarages(String location) {
    return _locationProvider.getNearByGarages(location);
  }

  @override
  Future<Location> updateLocation(Location location) async =>
      await _locationProvider.updateLocation(location);

  @override
  Future<Location> deleteLocation(String id) async =>
      await _locationProvider.deleteLocation(id);
}
