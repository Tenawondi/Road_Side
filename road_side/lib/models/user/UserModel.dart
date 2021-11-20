import 'package:json_annotation/json_annotation.dart';

part 'UserModel.g.dart';

@JsonSerializable()
class User {
  String? Id;
  String FirstName;
  String LastName;
  String Username;
  String EmailAddress; //TODO - Check for EmailAddress and json endpoint
  String PhoneNumber;
  String? ProfilePicture;
  String Role;
  String Password;
  List? OrderHistory;
  List? OngoingServices;
  List? Favorites;

  //List Ratings;
  //List Reviews;

  User({
    this.Id,
    required this.FirstName,
    required this.LastName,
    required this.Username,
    required this.EmailAddress,
    required this.PhoneNumber,
    this.ProfilePicture,
    required this.Role,
    required this.Password,
    this.OrderHistory,
    this.OngoingServices,
    this.Favorites,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

// return User(
// Id: json['id'],
// FirstName: json['first_name'],
// LastName: json['last_name'],
// Username: json['username'],
// EmailAddress: json['email_address'],
// PhoneNumber: json['phone_number'],
// ProfilePicture: json['profile_picture'],
// Role: json['role'],
// OrderHistory: json['order_history'],
// OngoingServices: json['ongoing_services'],
// Favorites: json['favorites'],
// );