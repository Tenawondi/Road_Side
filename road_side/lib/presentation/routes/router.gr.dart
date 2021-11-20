// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../models/garage/GarageModel.dart' as _i13;
import '../garage_detail/detail.dart' as _i9;
import '../home/home.dart' as _i8;
import '../main_screen/main_screen.dart' as _i10;
import '../ongoing_services/ongoing_services.dart' as _i12;
import '../order_page/order_page.dart' as _i11;
import '../profile/profile_screen.dart' as _i7;
import '../register/register_page.dart' as _i5;
import '../setting/setting_screen.dart' as _i6;
import '../sign_in/sign_in_page.dart' as _i4;
import '../splash/splash_page.dart' as _i3;

class RootRouter extends _i1.RootStackRouter {
  RootRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashPage();
        }),
    SignInPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.SignInPage();
        }),
    RegisterPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.RegisterPage();
        }),
    SettingsPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.SettingsPage();
        }),
    EditProfilePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.EditProfilePage();
        }),
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.Home();
        }),
    DetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<DetailRouteArgs>();
          return _i9.Detail(key: args.key, garage: args.garage);
        }),
    MainScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i10.MainScreen();
        }),
    OrderPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i11.OrderPage();
        }),
    OngoingOrdersRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i12.OngoingOrders();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/splash-page'),
        _i1.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(RegisterPageRoute.name, path: '/register-page'),
        _i1.RouteConfig(SettingsPageRoute.name, path: '/settings-page'),
        _i1.RouteConfig(EditProfilePageRoute.name, path: '/edit-profile-page'),
        _i1.RouteConfig(HomeRoute.name, path: '/Home'),
        _i1.RouteConfig(DetailRoute.name, path: '/Detail'),
        _i1.RouteConfig(MainScreenRoute.name, path: '/'),
        _i1.RouteConfig(OrderPageRoute.name, path: '/order-page'),
        _i1.RouteConfig(OngoingOrdersRoute.name, path: '/ongoing-orders')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/splash-page');

  static const String name = 'SplashPageRoute';
}

class SignInPageRoute extends _i1.PageRouteInfo {
  const SignInPageRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

class RegisterPageRoute extends _i1.PageRouteInfo {
  const RegisterPageRoute() : super(name, path: '/register-page');

  static const String name = 'RegisterPageRoute';
}

class SettingsPageRoute extends _i1.PageRouteInfo {
  const SettingsPageRoute() : super(name, path: '/settings-page');

  static const String name = 'SettingsPageRoute';
}

class EditProfilePageRoute extends _i1.PageRouteInfo {
  const EditProfilePageRoute() : super(name, path: '/edit-profile-page');

  static const String name = 'EditProfilePageRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/Home');

  static const String name = 'HomeRoute';
}

class DetailRoute extends _i1.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({_i2.Key? key, required _i13.Garage garage})
      : super(name,
            path: '/Detail', args: DetailRouteArgs(key: key, garage: garage));

  static const String name = 'DetailRoute';
}

class DetailRouteArgs {
  const DetailRouteArgs({this.key, required this.garage});

  final _i2.Key? key;

  final _i13.Garage garage;
}

class MainScreenRoute extends _i1.PageRouteInfo {
  const MainScreenRoute() : super(name, path: '/');

  static const String name = 'MainScreenRoute';
}

class OrderPageRoute extends _i1.PageRouteInfo {
  const OrderPageRoute() : super(name, path: '/order-page');

  static const String name = 'OrderPageRoute';
}

class OngoingOrdersRoute extends _i1.PageRouteInfo {
  const OngoingOrdersRoute() : super(name, path: '/ongoing-orders');

  static const String name = 'OngoingOrdersRoute';
}
