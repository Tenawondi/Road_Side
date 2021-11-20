import 'package:road_side/models/garage/GarageModel.dart';

abstract class IGarageRepository {
  Future<Garage> getGarage(String GarageId);
  Future<List<Garage>> getGarages();
}
