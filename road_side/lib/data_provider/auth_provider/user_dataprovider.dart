import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:road_side/models/user/UserModel.dart';

class UserDataProvider {
  final secure_storage = new FlutterSecureStorage();
  final _baseUrl = 'http://192.168.43.84:3000';
  final http.Client httpClient;
  final url = "http://10.6.198.159:3011/user/register";
  final loginurl = "http://10.6.198.159:3011/user/login";
  UserDataProvider({required this.httpClient}) : assert(httpClient != null);

  Future<User> createUser(User user) async {
    print(user.EmailAddress);
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{'Content-Type': 'application/json'},
      body: json.encode({
        //'id': user.id,
        'email': user.EmailAddress,
        'name': user.FirstName,
        'phone': user.PhoneNumber,
        'isAdmin': user.Role,

        'password': user.Password,

        //'phone': user.phone,
        //'isAdmin' : user.isAdmin,
      }),
    );
    print("yesssssssssssssssssssssssssssssssssss-------------------");
    if (response.statusCode == 200) {
      print("yesssssssssssssssssssssssssssssssssss");
      return User.fromJson(jsonDecode(response.body));
    } else {
      print("nooooooooooooooooooooooooooooooooooooo");
      throw Exception('Failed to create place.');
    }
  }

  Future<User> loginUser(User user) async {
    //print(user.email);
    final response = await http.post(
      Uri.parse(loginurl),
      headers: <String, String>{'Content-Type': 'application/json'},
      body: json.encode({
        //'id': user.id,
        'email': user.EmailAddress,

        'password': user.Password,

        //'phone': user.phone,
        //'isAdmin' : user.isAdmin,
      }),
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> output = jsonDecode(response.body);
      await secure_storage.write(key: 'token', value: output['token']);
      print(output['token']);
      return User.fromJson(output);
    } else {
      throw Exception('Failed to login.');
    }
  }

  Future<List<User>> getUser() async {
    final response = await httpClient.get(Uri.parse('$_baseUrl/posts'));

    if (response.statusCode == 200) {
      final users = jsonDecode(response.body) as List;
      return users.map((user) => User.fromJson(user)).toList();
    } else {
      throw Exception('Failed to load courses');
    }
  }

  Future<void> deleteUser(String id) async {
    final http.Response response = await httpClient.delete(
      Uri.parse('$url/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode != 204) {
      throw Exception('Failed to delete place.');
    }
  }

  Future<void> updateUser(User user) async {
    final http.Response response = await http.put(
      Uri.parse('$url/${user.Id}'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, dynamic>{
        'id': user.Id,
        'email': user.EmailAddress,
        'password': user.Password,
        'phone': user.PhoneNumber,
        'isAdmin': user.Role,
      }),
    );

    if (response.statusCode != 204) {
      throw Exception('Failed to update place.');
    }
  }
}
