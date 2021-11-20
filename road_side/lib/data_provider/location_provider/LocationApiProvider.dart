import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:road_side/data_provider/location_provider/ILocationProvider.dart';
import 'package:road_side/models/garage/GarageModel.dart';
import 'package:road_side/models/location/LocationModel.dart';
import 'package:road_side/util/const.dart';

class LocationApiProvider implements ILocationProvider{
  String _baseUrl = Constants.baseUrl;
  final http.Client _client;

  LocationApiProvider(this._client);

  @override
  Future<List<Location>> getLocations() async {
    late List<Location> locations;
    try{
      final response = await _client.get(Uri.parse(_baseUrl + "locations"));
      Map<String, dynamic> responseList = json.decode(response.body);
      List<dynamic> locationList = responseList["locations"];
      locations = List<Location>.from(locationList.map((model) => Location.fromJson(model)));

    }catch(e){
      print(e);
    }

    return locations;
  }

  @override
  Future<List<Garage>> getNearByGarages(String location) async {
    final query_param = {
      'location_name':location
    };

    late List<Garage> garages;
    try{
      final response = await _client.get(Uri.http(_baseUrl, "locations", query_param));
      Map<String, dynamic> responseList = json.decode(response.body);
      List<dynamic> garageList = responseList["garages"];

      garages =
          List<Garage>.from(garageList.map((model) => Garage.fromJson(model)));
    }catch(e){
      print(e);
    }
    return garages;
  }

}