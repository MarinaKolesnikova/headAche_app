import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';
import 'package:injectable/injectable.dart';

export 'package:auto_route/auto_route.dart';

import '../app_config.dart';
import './injection_config.config.dart';

export '../app_router.gr.dart';

late GetIt getIt;

@InjectableInit()
void initDependencies(AppConfig config) {
  getIt = GetIt.asNewInstance();

  $initGetIt(
    getIt,
    environment: config.name,
  );
}

void initLogger(AppConfig config) {
  Logger.root.level = config.enableLogs ? Level.ALL : Level.WARNING;
  Logger.root.onRecord.listen((LogRecord rec) {
    print(':::> ${rec.loggerName} ${rec.level.name}: ${rec.message} '
        '${rec.stackTrace?.toString() ?? ''}');
  });
}
