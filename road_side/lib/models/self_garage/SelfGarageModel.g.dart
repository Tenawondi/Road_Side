// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SelfGarageModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelfGarage _$SelfGarageFromJson(Map<String, dynamic> json) {
  return SelfGarage(
    id: json['id'] as String,
    name: json['name'] as String,
    user_name: json['user_name'] as String,
    password: json['password'] as String,
    description: json['description'] as String,
    location: json['location'] as String,
    contact: json['contact'] as List<dynamic>,
    opening_hour: json['opening_hour'] as String,
    closing_hour: json['closing_hour'] as String,
    services: json['services'] as List<dynamic>,
    role: json['role'] as String,
    incoming_requests: json['incoming_requests'] as List<dynamic>,
    ongoing_services: json['ongoing_services'] as List<dynamic>,
    order_history: json['order_history'] as List<dynamic>,
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$SelfGarageToJson(SelfGarage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'user_name': instance.user_name,
      'password': instance.password,
      'description': instance.description,
      'location': instance.location,
      'contact': instance.contact,
      'opening_hour': instance.opening_hour,
      'closing_hour': instance.closing_hour,
      'services': instance.services,
      'role': instance.role,
      'incoming_requests': instance.incoming_requests,
      'ongoing_services': instance.ongoing_services,
      'order_history': instance.order_history,
      'token': instance.token,
    };
