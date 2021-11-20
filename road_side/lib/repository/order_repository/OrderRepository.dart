import 'package:road_side/data_provider/order_provider/IOrderProvider.dart';
import 'package:road_side/models/order/OrderModel.dart';
import 'package:road_side/repository/order_repository/IOrderRepository.dart';

class OrderRepository implements IOrderRepository {
  final IOrderProvider orderProvider;

  OrderRepository(this.orderProvider);

  @override
  Future<Order> placeOrder(
      String user_id, String garage_id, String service_id) {
    return orderProvider.placeOrder(user_id, garage_id, service_id);
  }

  @override
  Future<Order> acceptOrder(Order order) {
    return orderProvider.acceptOrder(order);
  }

  @override
  Future<Order> updateOrder(Order order) async =>
      await orderProvider.updateOrder(order);

  @override
  Future<Order> deleteOrder(String id) async =>
      await orderProvider.deleteOrder(id);
}
