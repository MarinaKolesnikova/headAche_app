import 'dart:async';

import 'package:dio/dio.dart';

import 'package:migr_proj/src/shared/interfaces/i_connection_checker.dart';

class ConnectionInterceptor extends Interceptor {
  final IConnectionChecker connectionChecker;

  ConnectionInterceptor(this.connectionChecker);

  late final void Function()? showConnectionError;

  void init({required void Function()? showConnectionError}) {
    this.showConnectionError = showConnectionError;
  }

  @override
  Future<dynamic> onRequest(RequestOptions options, handler) async {
    final bool hasConnection = await connectionChecker.hasConnection();
    if (hasConnection) {
      return super.onRequest(options, handler);
    } else {
      if (showConnectionError != null) {
        showConnectionError!();
      }

      return handler.reject(
        DioError(
          requestOptions: options,
          type: DioErrorType.cancel,
        ),
        true,
      );
    }
  }
}
