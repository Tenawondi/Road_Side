// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i8;
import 'application/auth/register_form/register_form_bloc.dart' as _i6;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i7;
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
  gh.factory<_i6.RegisterFormBloc>(
      () => _i6.RegisterFormBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i7.SignInFormBloc>(
      () => _i7.SignInFormBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i8.AuthBloc>(() => _i8.AuthBloc(get<_i4.IAuthFacade>()));
  return get;
}

class _$ApiInjectableModule extends _i9.ApiInjectableModule {}
