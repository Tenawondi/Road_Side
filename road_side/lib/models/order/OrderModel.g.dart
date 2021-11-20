// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OrderModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) {
  return Order(
    id: json['id'] as String,
    user_id: json['user_id'] as String,
    garage_id: json['garage_id'] as String,
    service_id: json['service_id'] as String,
    description: json['description'] as String,
    issued_date: json['issued_date'] as String,
    is_placed: json['is_placed'] as String,
    status: json['status'] as String,
    completed_at: json['completed_at'] as String,
  );
}

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'garage_id': instance.garage_id,
      'service_id': instance.service_id,
      'description': instance.description,
      'issued_date': instance.issued_date,
      'is_placed': instance.is_placed,
      'status': instance.status,
      'completed_at': instance.completed_at,
    };
