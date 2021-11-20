import 'package:json_annotation/json_annotation.dart';

part 'OrderModel.g.dart';

@JsonSerializable()
class Order{
  String id;
  String user_id;
  String garage_id;
  String service_id;
  String description;
  String issued_date;
  String is_placed;
  String status;
  String completed_at;

  Order({
    required this.id,
    required this.user_id,
    required this.garage_id,
    required this.service_id,
    required this.description,
    required this.issued_date,
    required this.is_placed,
    required this.status,
    required this.completed_at,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}