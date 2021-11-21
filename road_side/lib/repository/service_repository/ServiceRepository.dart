import 'package:road_side/data_provider/service_provider/IServiceProvider.dart';
import 'package:road_side/models/service/ServiceModel.dart';
import 'package:road_side/repository/service_repository/IServiceRepository.dart';

class ServiceRepository implements IServiceRepository {
  final IServiceProvider _serviceProvider;

  ServiceRepository(this._serviceProvider);

  @override
  Future<Service> getService(serviceId) {
    return _serviceProvider.getService(serviceId);
  }

  @override
  Future<List<Service>> getServices() {
    return _serviceProvider.getServices();
  }

   @override
  Future<Service> addService(Service service) async =>
      await _serviceProvider.updateService(service);
    @override
  Future<Service> updateService(Service service) async =>
      await _serviceProvider.updateService(service);

  @override
  Future<Service> deleteService(String id) async =>
      await _serviceProvider.deleteService(id);
}