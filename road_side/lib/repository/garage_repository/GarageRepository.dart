import 'package:road_side/data_provider/garage_provider/IGarageProvider.dart';
import 'package:road_side/models/garage/GarageModel.dart';
import 'package:road_side/repository/garage_repository/IGarageRepository.dart';

class GarageRepository implements IGarageRepository{
  final IGarageProvider _garageProvider;

  GarageRepository(this._garageProvider);

  @override
  Future<Garage> getGarage(String garageId) {
    return _garageProvider.getGarage(garageId);
  }

  @override
  Future<List<Garage>> getGarages() {
    return _garageProvider.getGarages();
  }
  
}