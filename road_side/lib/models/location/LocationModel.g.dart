// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LocationModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location(
    Name: json['Name'] as String,
    GaragesAvailable: json['GaragesAvailable'] as List<dynamic>,
  );
}

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'Name': instance.Name,
      'GaragesAvailable': instance.GaragesAvailable,
    };
