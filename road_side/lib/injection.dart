import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:road_side/injection.config.dart';

final GetIt getIt = GetIt.instance;
@injectableInit
void configureInjection(String env){
  $initGetIt(getIt, environment: env);
}