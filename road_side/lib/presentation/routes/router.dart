import 'package:auto_route/annotations.dart';
import 'package:road_side/presentation/home/home.dart';
import 'package:road_side/presentation/ongoing_services/ongoing_services.dart';
import 'package:road_side/presentation/profile/profile_screen.dart';
import 'package:road_side/presentation/register/register.dart';
import 'package:road_side/presentation/setting/setting_screen.dart';
import 'package:road_side/presentation/sign_in/signin.dart';
import 'package:road_side/presentation/splash/splash_page.dart';
import 'package:road_side/presentation/garage_detail/detail.dart';
import 'package:road_side/presentation/main_screen/main_screen.dart';
import 'package:road_side/presentation/order_page/order_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: RegisterPage),
    MaterialRoute(page: SettingsPage),
    MaterialRoute(page: EditProfilePage),
    MaterialRoute(page: Home),
    MaterialRoute(page: Detail),
    MaterialRoute(page: MainScreen, initial: true),
    MaterialRoute(page: OrderPage),
    MaterialRoute(page: OngoingOrders),
  ],
)
class $RootRouter {}
