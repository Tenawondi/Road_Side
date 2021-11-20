import 'package:json_annotation/json_annotation.dart';

part 'SelfGarageModel.g.dart';

@JsonSerializable()
class SelfGarage{
  String id;
  String name;
  String user_name;
  String password;
  String description;
  String location;
  List contact;
  String opening_hour;
  String closing_hour;
  List services;
  String role;
  List incoming_requests;
  List ongoing_services;
  List order_history;
  String token;

  SelfGarage({
    required this.id,
    required this.name,
    required this.user_name,
    required this.password,
    required this.description,
    required this.location,
    required this.contact,
    required this.opening_hour,
    required this.closing_hour,
    required this.services,
    required this.role,
    required this.incoming_requests,
    required this.ongoing_services,
    required this.order_history,
    required this.token,
  });

  factory SelfGarage.fromJson(Map<String, dynamic> json) => _$SelfGarageFromJson(json);
  Map<String, dynamic> toJson() => _$SelfGarageToJson(this);
}