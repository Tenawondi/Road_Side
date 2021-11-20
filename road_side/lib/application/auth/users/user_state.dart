import 'package:equatable/equatable.dart';
import 'package:road_side/models/user/UserModel.dart';

//import '../place.dart';

class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserLoading extends UserState {}

class UsersLoadSuccess extends UserState {
  final List<User> users;

  UsersLoadSuccess([this.users = const []]);

  @override
  List<Object> get props => [users];
}

class UserOperationFailure extends UserState {}
