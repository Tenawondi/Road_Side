import 'package:road_side/models/order/OrderModel.dart';

abstract class IOrderProvider {
  Future<Order> placeOrder(String user_id, String garage_id, String service_id);
  Future<Order> acceptOrder(Order order);

  Future<Order> deleteOrder(String id);
  Future<Order> updateOrder(Order order);
}
