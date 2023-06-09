import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:migr_proj/config/app_config.dart';

class ErrorInterceptor extends Interceptor {
  final AppConfig appConfig;

  ErrorInterceptor(this.appConfig);

  late final void Function(String) errorOutput;

  @factoryMethod
  void init({required void Function(String) errorOutput}) {
    this.errorOutput = errorOutput;
  }

  @override
  Future<dynamic> onError(DioError error, handler) async {
    if (error.response.toString().contains('Invalid token')) {
      return super.onError(error, handler);
    } else if (appConfig.enableLogs) {
      errorOutput(error.response.toString());
    } else {
      errorOutput('Add Error Text to Language');
    }

    return super.onError(error, handler);
  }
}
