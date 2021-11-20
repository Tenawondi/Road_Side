import 'package:road_side/models/garage/GarageModel.dart';

abstract class IGarageProvider {
  Future<Garage> getGarage(String Id);
  Future<List<Garage>> getGarages();
  Future<Garage> createGarage(Garage garage);
  Future<Garage> deleteGarage(String id);
  Future<Garage> updateGarage(Garage garage);
}
