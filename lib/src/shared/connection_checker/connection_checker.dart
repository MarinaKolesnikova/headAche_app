import 'package:logging/logging.dart';

import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:migr_proj/src/shared/interfaces/i_connection_checker.dart';

class ConnectionChecker implements IConnectionChecker {
  Logger get _logger => Logger('$runtimeType');

  @override
  Future<bool> hasConnection() async {
    _logger.info('Connection status: ${await Connectivity().checkConnection()}');
    return await Connectivity().checkConnection();
  }
}
