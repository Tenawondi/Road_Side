// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GarageModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Garage _$GarageFromJson(Map<String, dynamic> json) {
  return Garage(
    Name: json['Name'] as String,
    Username: json['Username'] as String,
    Id: json['Id'] as String,
    ImageUrl: json['ImageUrl'] as String,
    ContactNumbers: json['ContactNumbers'] as List<dynamic>,
    WorkingHours: json['WorkingHours'] as List<dynamic>,
    Rating: json['Rating'] as int,
    Reviews: json['Reviews'] as List<dynamic>,
    AvailableServices: json['AvailableServices'] as List<dynamic>,
    IncomingRequests: json['IncomingRequests'] as List<dynamic>,
    OngoingServices: json['OngoingServices'] as List<dynamic>,
  );
}

Map<String, dynamic> _$GarageToJson(Garage instance) => <String, dynamic>{
      'Name': instance.Name,
      'Username': instance.Username,
      'Id': instance.Id,
      'ImageUrl': instance.ImageUrl,
      'ContactNumbers': instance.ContactNumbers,
      'WorkingHours': instance.WorkingHours,
      'Rating': instance.Rating,
      'Reviews': instance.Reviews,
      'AvailableServices': instance.AvailableServices,
      'IncomingRequests': instance.IncomingRequests,
      'OngoingServices': instance.OngoingServices,
    };
