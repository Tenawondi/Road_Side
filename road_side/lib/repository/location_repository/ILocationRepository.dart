import 'package:road_side/models/location/LocationModel.dart';
import 'package:road_side/models/garage/GarageModel.dart';

abstract class ILocationRepository {
  Future<List<Location>> getLocations();
  Future<List<Garage>> getNearByGarages(String location);

  Future<Location> createLocation(Location location);
  Future<Location> deleteLocation(String id);
  Future<Location> updateLocation(Location location);
}
