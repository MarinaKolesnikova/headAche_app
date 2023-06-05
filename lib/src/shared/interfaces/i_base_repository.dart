import 'package:logging/logging.dart';

import './i_base_api.dart';

abstract class IBaseRepository<T extends IBaseApi> {
  final T api;

  IBaseRepository(this.api);

  Logger get logger => Logger('$runtimeType #${identityHashCode(this)}');
}
