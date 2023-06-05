import 'package:dio/dio.dart';

import 'package:injectable/injectable.dart';
import 'package:migr_proj/config/app_config.dart';
import 'package:migr_proj/config/modules/injection_config.dart';
import 'package:migr_proj/src/auth/data/storages/token_storage.dart';
import 'package:migr_proj/src/shared/connection_checker/connection_checker.dart';
import 'package:migr_proj/src/shared/interfaces/i_connection_checker.dart';
import 'package:migr_proj/src/shared/interseptors/connection_interceptor.dart';
import 'package:migr_proj/src/shared/interseptors/error_interceptor.dart';
import 'package:migr_proj/src/shared/interseptors/header_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String authorized = 'authorized';
const String unauthorized = 'unauthorized';
const String authorizedMentoring = 'authorized_mentoring';

@module
abstract class NetworkModuleConfig {
  AppConfig get _appConfig => getIt<AppConfig>();

  IConnectionChecker get _connectionChecker => getIt<IConnectionChecker>();

  Interceptor get _errorInterceptor => getIt<ErrorInterceptor>();

  Interceptor get _connectionInterceptor => getIt<ConnectionInterceptor>();

  BaseOptions get _dioOptions {
    return BaseOptions(
      connectTimeout: 20000,
      receiveTimeout: 20000,
      sendTimeout: 20000,
    );
  }

  @Named(authorized)
  @injectable
  Dio provideAuthorizedDio(AppConfig config) => _getDio(
        config: config,
        isAuthorized: true,
      );

  @Named(authorizedMentoring)
  @injectable
  Dio provideAuthorizedMentoringDio(AppConfig config) => _getDio(
        config: config,
        isAuthorized: true,
        isMentoring: true,
      );

  @Named(unauthorized)
  @injectable
  Dio provideUnAuthorizedDio(AppConfig config) => _getDio(
        config: config,
        isAuthorized: false,
      );

  Dio _getDio({
    required AppConfig config,
    required bool isAuthorized,
    bool isMentoring = false,
  }) {
    final dio = Dio(_dioOptions);

    dio.options.baseUrl = config.baseUrl;

    final interceptors = [
      HeaderInterceptor(
        storage: getIt<TokenStorage>(),
        isAuthorized: isAuthorized,
      ),
      _connectionInterceptor,
      _errorInterceptor,
    ];

    return dio
      ..interceptors.addAll([
        ...interceptors,
        if (config.enableLogs)
          PrettyDioLogger(
            requestBody: true,
            requestHeader: true,
          ),
      ]);
  }

  @lazySingleton
  @factoryMethod
  IConnectionChecker get connectionChecker => ConnectionChecker();

  @lazySingleton
  @factoryMethod
  ErrorInterceptor get errorInterceptor {
    final ErrorInterceptor _interceptor = ErrorInterceptor(_appConfig);
    _interceptor.init(errorOutput: (error) {
      print('dio error: $error');
    });
    return _interceptor;
  }

  @lazySingleton
  @factoryMethod
  ConnectionInterceptor get connectionInterceptor {
    final ConnectionInterceptor _interceptor = ConnectionInterceptor(_connectionChecker);
    _interceptor.init(showConnectionError: () => print('No Connection Error'));
    return _interceptor;
  }
}
