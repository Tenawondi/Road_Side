import 'package:road_side/models/garage/GarageModel.dart';

abstract class IGarageProvider {
  Future<Garage> getGarage(String Id);
  Future<List<Garage>> getGarages();
}