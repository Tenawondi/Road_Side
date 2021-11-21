import 'dart:convert';
import 'package:road_side/data_provider/service_provider/IServiceProvider.dart';
import 'package:road_side/models/service/ServiceModel.dart';
import 'package:http/http.dart' as http;
import 'package:road_side/util/const.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ServiceApiProvider implements IServiceProvider {
  final http.Client _client;
  String _baseUrl = Constants.baseUrl;

  ServiceApiProvider(this._client);

  @override
  Future<Service> getService(String serviceId) async {
    final response = await _client.get(Uri.parse(_baseUrl));
    return parseResponse(response);
  }

  @override
  Future<List<Service>> getServices() async {
    final response = await _client.get(Uri.parse(_baseUrl));
    Iterable responseList = json.decode(response.body);
    List<Service> services = List<Service>.from(
        responseList.map((model) => Service.fromJson(model)));

    return services;
  }

  @override
  Future<Service> addService(Service service) async {
    final response = await http.post(
      Uri.parse(_baseUrl + "garages"),
      headers: <String, String>{'Content-Type': 'application/json'},
      body: json.encode({'name': service.name}),
    );
    if (response.statusCode == 200) {
      return Service.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create service');
    }
  }

  @override
  Future<Service> deleteService(String id) async {
    final http.Response response = await http.delete(
      Uri.parse(_baseUrl + id),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      return Service.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create service');
    }
  }

  @override
  Future<Service> updateService(Service service) async {
    final http.Response response = await http.put(
      Uri.parse(_baseUrl + service.name),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, dynamic>{
        'name': service.name,
      }),
    );

    if (response.statusCode == 200) {
      return Service.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create service');
    }
  }

  Service parseResponse(http.Response response) {
    final responseString = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return Service.fromJson(responseString);
    } else {
      throw Exception('Failed to load Services');
    }
  }
}
