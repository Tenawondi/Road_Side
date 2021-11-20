import 'package:json_annotation/json_annotation.dart';

part 'LocationModel.g.dart';

@JsonSerializable()
class Location {
  String Name;
  List GaragesAvailable;

  Location({
    required this.Name,
    required this.GaragesAvailable,
  });

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
