// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RegisterCredential.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterCredential _$RegisterCredentialFromJson(Map<String, dynamic> json) {
  return RegisterCredential(
    first_name: json['first_name'] as String,
    last_name: json['last_name'] as String,
    phone_number: json['phone_number'] as String,
    user_name: json['user_name'] as String,
    email: json['email'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$RegisterCredentialToJson(RegisterCredential instance) =>
    <String, dynamic>{
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'phone_number': instance.phone_number,
      'user_name': instance.user_name,
      'email': instance.email,
      'password': instance.password,
    };
