import 'package:road_side/domain/auth/value_objects.dart';

class Mapper{

  static Map<String, dynamic> toJson({required String username, required String password, required String role}) => {
    "user_name":username.toString(),
    "password":password.toString(),
    "role":role
};
}