import 'dart:async';
import 'package:road_side/data_provider/local_database/database.dart';
import 'package:road_side/data_provider/service_provider/IServiceProvider.dart';
import 'package:road_side/models/service/ServiceModel.dart';

class ServiceLocalProvider implements IServiceProvider{
  final dbProvider = DatabaseProvider.dbProvider;
  @override

  Future<Service> getService(String serviceId) async {
    final db = await dbProvider.database;
    var result = await db.query("Service", where: "id = ?", whereArgs: [serviceId]);

    return Service.fromJson(result.first);
  }

  @override
  Future<List<Service>> getServices() async {
    final db = await dbProvider.database;
    var result = await db.query("Service");


    List<Service> services = result.isNotEmpty ? result.map((service) => Service.fromJson(service)).toList() : [];
    return services;
  }

}