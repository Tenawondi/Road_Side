import 'package:json_annotation/json_annotation.dart';

part 'RegisterCredential.g.dart';

@JsonSerializable()
class RegisterCredential {
  final String first_name;
  final String last_name;
  final String phone_number;
  final String user_name;
  final String email;
  final String password;

  RegisterCredential({
    required this.first_name,
    required this.last_name,
    required this.phone_number,
    required this.user_name,
    required this.email,
    required this.password,
  });

  factory RegisterCredential.fromJson(Map<String, dynamic> json) =>
      _$RegisterCredentialFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterCredentialToJson(this);
}
