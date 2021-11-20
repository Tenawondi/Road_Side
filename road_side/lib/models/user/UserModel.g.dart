// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    Id: json['Id'] as String,
    FirstName: json['FirstName'] as String,
    LastName: json['LastName'] as String,
    Username: json['Username'] as String,
    Password: json['Password'] as String,
    EmailAddress: json['EmailAddress'] as String,
    PhoneNumber: json['PhoneNumber'] as String,
    ProfilePicture: json['ProfilePicture'] as String,
    Role: json['Role'] as String,
    OrderHistory: json['OrderHistory'] as List<dynamic>,
    OngoingServices: json['OngoingServices'] as List<dynamic>,
    Favorites: json['Favorites'] as List<dynamic>,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'Id': instance.Id,
      'FirstName': instance.FirstName,
      'LastName': instance.LastName,
      'Username': instance.Username,
      'EmailAddress': instance.EmailAddress,
      'PhoneNumber': instance.PhoneNumber,
      'ProfilePicture': instance.ProfilePicture,
      'Role': instance.Role,
      'OrderHistory': instance.OrderHistory,
      'OngoingServices': instance.OngoingServices,
      'Favorites': instance.Favorites,
    };
