import 'package:road_side/data_provider/garage_provider/IGarageProvider.dart';
import 'package:road_side/models/garage/GarageModel.dart';
import 'package:road_side/repository/garage_repository/IGarageRepository.dart';

class GarageRepository implements IGarageRepository {
  final IGarageProvider _garageProvider;

  GarageRepository(this._garageProvider);

  Future<Garage> createGarage(Garage garage) async {
    return await _garageProvider.createGarage(garage);
  }

  @override
  Future<Garage> getGarage(String garageId) {
    return _garageProvider.getGarage(garageId);
  }

  @override
  Future<List<Garage>> getGarages() {
    return _garageProvider.getGarages();
  }

  Future<void> updateGarage(Garage garage) async {
    await _garageProvider.updateGarage(garage);
  }

  Future<void> deleteUser(String id) async {
    await _garageProvider.deleteGarage(id);
  }
}
