import 'package:dio/dio.dart';
import 'package:logging/logging.dart';
import 'package:migr_proj/src/auth/data/storages/token_storage.dart';
import 'package:migr_proj/src/auth/entity/models/token/token.dart';

class HeaderInterceptor extends Interceptor {
  final TokenStorage storage;
  final bool isAuthorized;

  HeaderInterceptor({
    required this.storage,
    required this.isAuthorized,
  });

  Logger get _logger => Logger('$runtimeType');

  @override
  Future onRequest(RequestOptions options, handler) async {
    _logger.info('<onRequest> => isAuthorized: $isAuthorized');

    if (isAuthorized) {
      final Token? token = await storage.take();

      if (token == null) {
        return super.onRequest(options, handler);
      }

      _logger.info('Token was found $token');

      options.headers.addAll({'Authorization': 'Token ${token.accessToken}'});
    }

    return super.onRequest(options, handler);
  }
}
