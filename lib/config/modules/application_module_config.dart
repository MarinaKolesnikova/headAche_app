import 'package:injectable/injectable.dart';
import 'package:migr_proj/config/modules/injection_config.dart';

import 'package:migr_proj/resources/i18n/ru.dart';
import 'package:migr_proj/resources/resources.dart';

import 'package:migr_proj/src/auth/data/repositories/auth_repository_unauthorized.dart';
import 'package:migr_proj/src/auth/data/services/auth_service_impl.dart';
import 'package:migr_proj/src/auth/data/services/auth_service.dart';
import 'package:migr_proj/src/auth/data/services/auth_service_mock.dart';

import 'package:migr_proj/src/main/data/repositories/app_repositories.dart';
import 'package:migr_proj/src/main/data/services/app_service.dart';
import 'package:migr_proj/src/main/data/services/app_service_impl.dart';
import 'package:migr_proj/src/main/data/services/app_service_mock.dart';

import 'package:migr_proj/src/shared/interfaces/i_storage.dart';
import 'package:migr_proj/src/shared/storages/hive_storage.dart';
import 'package:migr_proj/src/shared/storages/mock_storage.dart';

import '../app_config.dart';

@module
abstract class ApplicationModuleConfig {
  @singleton
  @factoryMethod
  AppRouter get router => AppRouter();

  @injectable
  IStorage getStorageService(AppConfig config) {
    if (config is MockConfig) return MockStorage();

    return HiveStorage();
  }

  @injectable
  AuthService getAuthService(AppConfig config, AuthRepositoryUnAuthorized authRepo) {
    if (config is MockConfig) return AuthServiceMock();
    return AuthServiceImpl(authRepo);
  }

  @injectable
  AppService getAppService(AppConfig config, AppRepository appRepo) {
    if (config is MockConfig) return AppServiceMock();
    return AppServiceImpl(appRepo);
  }

  @singleton
  @factoryMethod
  DictionaryManager get dictionary {
    return DictionaryManager([
      Dictionary(languageCode: 'ru', json: ru),
    ]);
  }
}
