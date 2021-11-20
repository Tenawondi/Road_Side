import 'dart:convert';
import 'package:road_side/data_provider/order_provider/IOrderProvider.dart';
import 'package:road_side/data_provider/order_provider/mapper.dart';
import 'package:road_side/models/order/OrderModel.dart';
import 'package:http/http.dart' as http;
import 'package:road_side/util/const.dart';

class OrderApiProvider implements IOrderProvider {
  String _baseUrl = Constants.baseUrl;
  final http.Client _client;

  OrderApiProvider(this._client);

  @override
  Future<Order> placeOrder(
      String user_id, String garage_id, String service_id) async {
    late Order response_order;
    try {
      final response = await _client.post(
          Uri.parse(_baseUrl + "order/place_order"),
          body: jsonEncode(Mapper.toJson(
              user_id: user_id, garage_id: garage_id, service_id: service_id)));
      if (response.statusCode == 201) {
        final response_string = jsonDecode(response.body);
        final order_response = response_string["newOrder"];
        response_order = Order.fromJson(order_response);
      }
    } catch (error) {
      print(error);
    }
    return response_order;
  }

  Future<Order> acceptOrder(Order order) async {
    late Order response_order;
    //final user_id = order.user_id;
    final order_id = order.id;
    final garage_id = order.garage_id;
    try {
      final response = await _client
          .patch(Uri.parse(_baseUrl + "order/${garage_id}/accept/${order_id}"));
      if (response.statusCode == 201) {
        final response_string = jsonDecode(response.body);
        final order_response = response_string["newOrder"];
        response_order = Order.fromJson(order_response);
      }
    } catch (error) {
      print(error);
    }
    return response_order;
  }

  @override
  Future<Order> deleteOrder(String id) async {
    final http.Response response = await http.delete(
      Uri.parse(_baseUrl + id),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      return Order.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create order');
    }
  }

  @override
  Future<Order> updateOrder(Order order) async {
    final http.Response response = await http.put(
      Uri.parse(_baseUrl + "orders/" + order.id),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, dynamic>{
        'garage_id': order.garage_id,
        'service_id': order.service_id
      }),
    );

    if (response.statusCode == 200) {
      return Order.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create order');
    }
  }
}
