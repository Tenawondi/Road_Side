import 'dart:async';
import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:road_side/domain/auth/auth_failure.dart';
import 'package:road_side/models/self_garage/SelfGarageModel.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:road_side/models/register_credential/RegisterCredential.dart';
import 'package:road_side/domain/auth/i_auth_facade.dart';
import 'package:road_side/models/user/UserModel.dart';
import 'package:road_side/util/const.dart';

import 'mapper.dart';

@LazySingleton(as: IAuthFacade) //TODO - Test injectable
class ApiAuthFacade implements IAuthFacade {
  final http.Client _client;
  SharedPreferences? userSession;
  final String _baseUrl = Constants.baseUrl;

  ApiAuthFacade(this._client) {
    sharedPreference();
  }

  Future<void> sharedPreference() async {
    this.userSession = await SharedPreferences.getInstance();
  }

  @override
  Future<Either<Unit, User>> getSignedInUser() async {
    final user = await loadStringFromStorage(
      key: 'user',
      prefs: this.userSession,
    );
    return right(User.fromJson(jsonDecode(user!)));
  }

  Future<Either<Unit, SelfGarage>> getSignedInGarage() async {
    final garage = await loadStringFromStorage(
      key: 'garage',
      prefs: this.userSession,
    );
    return right(SelfGarage.fromJson(jsonDecode(garage!)));
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      RegisterCredential credential) async {
    var endpoint = _baseUrl + 'users/register';
    return await _postCredential(endpoint, credential);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithUsernameAndPassword(
      {required String username,
      required String password,
      required String role}) async {
    var endpoint = _baseUrl + "auth/login";
    return await _postUsernameAndPasswordCredential(endpoint,
        username: username, password: password, role: role);
  }

  @override
  Future<void> signOut(String token) async {
    var url = _baseUrl + '/auth/signout';
    var headers = {"Content-type": "application/json", "Authorization": token};
    var response = await _client.post(Uri.parse(url), headers: headers);
    //TODO - Response from Signout?
  }

  Future<Either<AuthFailure, Unit>> _postCredential(
      String endpoint, RegisterCredential credential) async {
    var response = await _client.post(
      Uri.parse(endpoint),
      headers: <String, String>{"Content-type": "application/json"},
      body: jsonEncode(credential.toJson()),
    );

    print(response.body);
    print(response.statusCode);
    if (response.statusCode != 201) {
      Map map = jsonDecode(response.body);
      print(map);
      return right(unit);
    }
    var json = jsonDecode(response.body);

    return json['auth_token'] != null
        ? right(json['auth_token'])
        : left(AuthFailure.invalidValue());
  }

  Future<Either<AuthFailure, Unit>> _postUsernameAndPasswordCredential(
      String endpoint,
      {required String username,
      required String password,
      required String role}) async {
    late User user;
    late SelfGarage garage;
    try {
      print(jsonEncode(
          Mapper.toJson(username: username, password: password, role: role)));
      var response = await _client.put(
        Uri.parse(endpoint),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
            Mapper.toJson(username: username, password: password, role: role)),
      );
      print(response.body);
      if (response.statusCode == 200) {
        print(response.body);
        Map responseMap = jsonDecode(response.body);
        await sharedPreference();

        //TODO check api's user response
        if (responseMap["user"].role == "user") {
          await saveStringToStorage(
              key: "User",
              value: jsonEncode(Mapper.toJson(
                  username: username, password: password, role: role)),
              prefs: this.userSession);

          final user_map = responseMap["user"];
          user = User(
            Password: user_map.firstname,
            Id: user_map.id,
            FirstName: user_map.first_name,
            LastName: user_map.last_name,
            Username: user_map.user_name,
            EmailAddress: user_map.email,
            PhoneNumber: user_map.phone_number,
            ProfilePicture: "assets/userimage.png",
            Role: user_map.role,
            OrderHistory: user_map.order_history,
            OngoingServices: user_map.ongoing_services,
            Favorites: user_map.favorites,
          );

          await saveStringToStorage(
              key: 'user',
              value: jsonEncode(user.toJson()),
              prefs: this.userSession);
        } else if (responseMap["garage"].role == "garage") {
          await saveStringToStorage(
              key: "Garage",
              value: jsonEncode(Mapper.toJson(
                  username: username, password: password, role: role)),
              prefs: this.userSession);

          final garage_map = responseMap["garage"];
          garage = SelfGarage(
              id: garage_map.id,
              name: garage_map.name,
              user_name: garage_map.user_name,
              password: garage_map.password,
              description: garage_map.description,
              location: garage_map.location,
              contact: garage_map.contact,
              opening_hour: garage_map.opening_hour,
              closing_hour: garage_map.closing_hour,
              services: garage_map.services,
              role: garage_map.role,
              incoming_requests: garage_map.incoming_requests,
              ongoing_services: garage_map.ongoing_services,
              order_history: garage_map.order_history,
              token: garage_map.token);

          await saveStringToStorage(
              key: 'garage',
              value: jsonEncode(garage.toJson()),
              prefs: this.userSession);
        } else if (responseMap["admin"].role == "admin") {}

        await saveStringToStorage(
            key: "User",
            value: jsonEncode(Mapper.toJson(
                username: username, password: password, role: role)),
            prefs: this.userSession);
        // await saveStringToStorage(
        //     key: "User Credential",
        //     value: response.body,
        //     prefs: this.userSession);

        final user_map = responseMap["user"];
        user = User(
          Id: user_map.id,
          FirstName: user_map.first_name,
          LastName: user_map.last_name,
          Username: user_map.user_name,
          Password: user_map.firstname,
          EmailAddress: user_map.email,
          PhoneNumber: user_map.phone_number,
          ProfilePicture: "assets/userimage.png",
          Role: user_map.role,
          OrderHistory: user_map.order_history,
          OngoingServices: user_map.ongoing_services,
          Favorites: user_map.favorites,
        );

        await saveStringToStorage(
            key: 'user',
            value: jsonEncode(user.toJson()),
            prefs: this.userSession);
      } else if (response.statusCode == 400) {
        return left(AuthFailure.notFound());
      }
      return right(unit);
    } catch (e) {
      print(e);
      return left(AuthFailure.serverError());
    }

    //TODO - Save token
  }

  //TODO Configure this method
  _transformError(Map map) {
    var contents = map['error'] ?? map['errors'];
    if (contents is String) return contents;
    var errStr =
        contents.fold('', (prev, ele) => prev + ele.values.first + '\n');
    return errStr.trim();
  }

  static Future<String?> loadStringFromStorage(
      {required String key, required SharedPreferences? prefs}) async {
    return await prefs?.getString(key);
  }

  static Future saveStringToStorage(
      {required String key,
      required String value,
      required SharedPreferences? prefs}) async {
    return await prefs?.setString(key, value);
  }
}
