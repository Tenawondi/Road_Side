import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:road_side/application/home_page/home_bloc.dart';
import 'package:road_side/application/main_screen/main_screen_bloc.dart';
import 'package:road_side/application/order_page/order_page_bloc.dart';
import 'package:road_side/data_provider/garage_provider/GarageApiProvider.dart';
import 'package:road_side/data_provider/location_provider/LocationApiProvider.dart';
import 'package:road_side/data_provider/service_provider/ServiceApiProvider.dart';
import 'package:road_side/domain/auth/i_auth_facade.dart';
import 'package:road_side/infrastructure/api/api_auth_facade.dart';
import 'package:road_side/injection.dart';
import 'package:http/http.dart' as http;
import 'package:road_side/presentation/routes/router.gr.dart';
import 'package:road_side/repository/garage_repository/GarageRepository.dart';
import 'package:road_side/repository/location_repository/LocationRepository.dart';
import 'package:road_side/repository/service_repository/ServiceRepository.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = RootRouter();

  @override
  Widget build(BuildContext context) {
    final IAuthFacade _authFacade = ApiAuthFacade(http.Client());

    final garageProvider = GarageApiProvider(http.Client());

    final garageRepository = GarageRepository(garageProvider);

    final locationProvider = LocationApiProvider(http.Client());

    final locationRepository = LocationRepository(locationProvider);

    final serviceProvider = ServiceApiProvider(http.Client());

    final serviceRepository = ServiceRepository(serviceProvider);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => HomeBloc(
                garageRepository: garageRepository,
                serviceRepository: serviceRepository)),
        BlocProvider(
            create: (context) =>
                MainScreenBloc(garageRepository: garageRepository)),
        BlocProvider(
            create: (context) =>
                OrderPageBloc(locationRepository: locationRepository)),
        //BlocProvider(create: (context) => ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: AutoRouterDelegate(
          _appRouter,
          navigatorObservers: () => [AutoRouteObserver()],
        ),
      ),
    );
  }
}
