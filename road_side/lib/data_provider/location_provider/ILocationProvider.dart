import 'package:road_side/models/location/LocationModel.dart';
import 'package:road_side/models/garage/GarageModel.dart';

abstract class ILocationProvider{
  Future<List<Location>> getLocations();
  Future<List<Garage>> getNearByGarages(String location);
}