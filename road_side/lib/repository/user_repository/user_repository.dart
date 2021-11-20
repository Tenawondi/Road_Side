import 'package:road_side/data_provider/auth_provider/user_dataprovider.dart';
import 'package:road_side/models/user/UserModel.dart';

class UserRepository {
  final UserDataProvider dataProvider;

  UserRepository({required this.dataProvider}) : assert(dataProvider != null);

  Future<User> createUser(User user) async {
    return await dataProvider.createUser(user);
  }

  Future<User> loginUser(User user) async {
    return await dataProvider.loginUser(user);
  }

  Future<List<User>> getUsers() async {
    return await dataProvider.getUser();
  }

  Future<void> updateUser(User user) async {
    await dataProvider.updateUser(user);
  }

  Future<void> deleteUser(String id) async {
    await dataProvider.deleteUser(id);
  }
}
