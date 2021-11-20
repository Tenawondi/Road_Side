import 'package:road_side/models/service/ServiceModel.dart';

abstract class IServiceRepository {
  Future<Service> getService(serviceId);
  Future<List<Service>> getServices();
  Future<Service> addService(Service service);
  Future<Service> deleteService(String id);
  Future<Service> updateService(Service service);
}
