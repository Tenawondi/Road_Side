import 'package:road_side/models/service/ServiceModel.dart';

abstract class IServiceProvider {
  Future<Service> getService(String serviceId);
  Future<List<Service>> getServices();
  Future<Service> addService(Service service);
  Future<Service> deleteService(String id);
  Future<Service> updateService(Service service);
}
