import 'dart:convert';
import 'package:road_side/data_provider/service_provider/IServiceProvider.dart';
import 'package:road_side/models/service/ServiceModel.dart';
import 'package:http/http.dart' as http;
import 'package:road_side/util/const.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ServiceApiProvider implements IServiceProvider{
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
    List<Service> services = List<Service>.from(responseList.map((model) => Service.fromJson(model)));

    return services;
  }

  Service parseResponse(http.Response response){
    final responseString = jsonDecode(response.body);

    if(response.statusCode == 200) {
      return Service.fromJson(responseString);
    }else{
      throw Exception('Failed to load Services');
    }
  }
  
}