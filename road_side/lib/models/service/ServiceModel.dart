import 'package:json_annotation/json_annotation.dart';

part 'ServiceModel.g.dart';

@JsonSerializable()
class Service{
  String id;
  String name;

  Service({
    required this.id,
    required this.name,
  });

  factory Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceToJson(this);
}