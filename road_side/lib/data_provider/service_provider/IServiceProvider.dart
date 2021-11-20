import 'package:road_side/models/service/ServiceModel.dart';

abstract class IServiceProvider{
  Future<Service> getService(String serviceId);
  Future<List<Service>> getServices();
}