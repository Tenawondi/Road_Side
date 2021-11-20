import 'dart:convert';
import 'package:road_side/data_provider/garage_provider/IGarageProvider.dart';
import 'package:road_side/models/garage/GarageModel.dart';
import 'package:http/http.dart' as http;
import 'package:road_side/util/const.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GarageApiProvider implements IGarageProvider {
  final http.Client _client;
  String _baseUrl = Constants.baseUrl;
  SharedPreferences? userSession;

  GarageApiProvider(this._client) {
    sharedPreference();
  }

  Future<void> sharedPreference() async {
    this.userSession = await SharedPreferences.getInstance();
  }

  //TODO - Untrusted Code
  Future<Garage> getGarage(String garageId) async {
    final response = await _client.get(Uri.parse(_baseUrl));
    return parseResponse(response);
  }

  Future<List<Garage>> getGarages() async {
    late List<Garage> garages;

    try {
      final response = await _client.get(Uri.parse(_baseUrl + "garages"));
      Map<String, dynamic> responseList = json.decode(response.body);
      List<dynamic> garageList = responseList["garages"];

      garages =
          List<Garage>.from(garageList.map((model) => Garage.fromJson(model)));
    } catch (e) {
      print(e);
    }
    return garages;
  }

  Future<Garage> createGarage(Garage garage) async {
    final response = await http.post(
      Uri.parse(_baseUrl + "garages"),
      headers: <String, String>{'Content-Type': 'application/json'},
      body: json.encode({
        'name': garage.Name,
        'username': garage.Username,
        'reviews': garage.Reviews,
        'contactnumbers': garage.ContactNumbers,
        'availableServices': garage.AvailableServices,
        'image': garage.ImageUrl,
        'incomingrequests': garage.IncomingRequests,
        'workinghours': garage.WorkingHours
      }),
    );
    if (response.statusCode == 200) {
      return Garage.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create garage');
    }
  }

  Garage parseResponse(http.Response response) {
    final responseString = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return Garage.fromJson(responseString);
    } else {
      throw Exception('Failed to load garages');
    }
  }
}
