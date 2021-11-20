// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'domain/auth/i_auth_facade.dart' as _i4;
import 'infrastructure/api/api_auth_facade.dart' as _i5;
import 'infrastructure/core/api_injectable.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final apiInjectableModule = _$ApiInjectableModule();
  gh.lazySingleton<_i3.Client>(() => apiInjectableModule.client);
  gh.lazySingleton<_i4.IAuthFacade>(() => _i5.ApiAuthFacade(get<_i3.Client>()));

  return get;
}

class _$ApiInjectableModule extends _i9.ApiInjectableModule {}
