// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../resources/resources.dart' as _i6;
import '../../src/auth/data/repositories/auth_repository_unauthorized.dart'
    as _i15;
import '../../src/auth/data/services/auth_service.dart' as _i16;
import '../../src/auth/data/storages/token_storage.dart' as _i12;
import '../../src/auth/domain/bloc/auth_bloc.dart' as _i18;
import '../../src/main/data/repositories/app_repositories.dart' as _i13;
import '../../src/main/data/services/app_service.dart' as _i14;
import '../../src/main/data/settings_storage.dart' as _i11;
import '../../src/main/domain/bloc/app_bloc.dart' as _i17;
import '../../src/shared/interfaces/i_connection_checker.dart' as _i9;
import '../../src/shared/interfaces/i_storage.dart' as _i10;
import '../../src/shared/interseptors/connection_interceptor.dart' as _i5;
import '../../src/shared/interseptors/error_interceptor.dart' as _i8;
import '../app_config.dart' as _i3;
import 'application_module_config.dart' as _i19;
import 'dio_module_config.dart' as _i20;
import 'injection_config.dart' as _i4;

const String _dev = 'dev';
const String _stage = 'stage';
const String _prod = 'prod';
const String _mock = 'mock';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final applicationModuleConfig = _$ApplicationModuleConfig();
  final networkModuleConfig = _$NetworkModuleConfig();
  gh.factory<_i3.AppConfig>(() => _i3.DevConfig(), registerFor: {_dev});
  gh.factory<_i3.AppConfig>(() => _i3.StageConfig(), registerFor: {_stage});
  gh.factory<_i3.AppConfig>(() => _i3.ProdConfig(), registerFor: {_prod});
  gh.factory<_i3.AppConfig>(() => _i3.MockConfig(), registerFor: {_mock});
  gh.singleton<_i4.AppRouter>(applicationModuleConfig.router);
  gh.lazySingleton<_i5.ConnectionInterceptor>(
      () => networkModuleConfig.connectionInterceptor);
  gh.singleton<_i6.DictionaryManager>(applicationModuleConfig.dictionary);
  gh.factory<_i7.Dio>(
      () => networkModuleConfig.provideAuthorizedDio(get<_i3.AppConfig>()),
      instanceName: 'authorized');
  gh.factory<_i7.Dio>(
      () => networkModuleConfig
          .provideAuthorizedMentoringDio(get<_i3.AppConfig>()),
      instanceName: 'authorized_mentoring');
  gh.factory<_i7.Dio>(
      () => networkModuleConfig.provideUnAuthorizedDio(get<_i3.AppConfig>()),
      instanceName: 'unauthorized');
  gh.lazySingleton<_i8.ErrorInterceptor>(
      () => networkModuleConfig.errorInterceptor);
  gh.lazySingleton<_i9.IConnectionChecker>(
      () => networkModuleConfig.connectionChecker);
  gh.factory<_i10.IStorage>(
      () => applicationModuleConfig.getStorageService(get<_i3.AppConfig>()));
  gh.lazySingleton<_i11.SettingStorage>(
      () => _i11.SettingStorage(get<_i10.IStorage>()));
  gh.lazySingleton<_i12.TokenStorage>(
      () => _i12.TokenStorage(get<_i10.IStorage>()));
  gh.lazySingleton<_i13.AppRepository>(() => _i13.AppRepository(
      get<_i7.Dio>(instanceName: 'authorized'), get<_i3.AppConfig>()));
  gh.factory<_i14.AppService>(() => applicationModuleConfig.getAppService(
      get<_i3.AppConfig>(), get<_i13.AppRepository>()));
  gh.lazySingleton<_i15.AuthRepositoryUnAuthorized>(() =>
      _i15.AuthRepositoryUnAuthorized(
          get<_i7.Dio>(instanceName: 'unauthorized'), get<_i3.AppConfig>()));
  gh.factory<_i16.AuthService>(() => applicationModuleConfig.getAuthService(
      get<_i3.AppConfig>(), get<_i15.AuthRepositoryUnAuthorized>()));
  gh.singleton<_i17.AppBloc>(_i17.AppBloc(
      storage: get<_i10.IStorage>(),
      settingStorage: get<_i11.SettingStorage>(),
      tokenStorage: get<_i12.TokenStorage>(),
      dictionaryManager: get<_i6.DictionaryManager>(),
      appService: get<_i14.AppService>()));
  gh.lazySingleton<_i18.AuthBloc>(
      () => _i18.AuthBloc(get<_i12.TokenStorage>(), get<_i16.AuthService>()));
  return get;
}

class _$ApplicationModuleConfig extends _i19.ApplicationModuleConfig {}

class _$NetworkModuleConfig extends _i20.NetworkModuleConfig {}
