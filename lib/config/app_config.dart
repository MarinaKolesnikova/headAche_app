import 'package:injectable/injectable.dart';

abstract class AppConfig {
  const AppConfig();

  String get name;

  String get baseUrl;

  bool get enableLogs;

  bool get useMock;

  int get pagination;

  @override
  String toString() => '$runtimeType {baseUrl:$baseUrl, enableLogs:$enableLogs}';
}

@Environment('dev')
@Injectable(as: AppConfig)
class DevConfig extends AppConfig {
  @override
  bool get useMock => true;

  @override
  String get baseUrl => 'https://net';

  @override
  bool get enableLogs => true;

  @override
  String get name => 'dev';

  @override
  int get pagination => 10;
}

@Environment('stage')
@Injectable(as: AppConfig)
class StageConfig implements AppConfig {
  @override
  bool get useMock => false;

  @override
  String get baseUrl => 'https://net';

  @override
  bool get enableLogs => true;

  @override
  String get name => 'stage';

  @override
  int get pagination => 10;
}

@Environment('prod')
@Injectable(as: AppConfig)
class ProdConfig implements AppConfig {
  @override
  bool get useMock => false;

  @override
  String get baseUrl => 'https://net';

  @override
  bool get enableLogs => true;

  @override
  String get name => 'prod';

  @override
  int get pagination => 10;
}

@Environment('mock')
@Injectable(as: AppConfig)
class MockConfig implements AppConfig {
  @override
  bool get useMock => true;

  @override
  String get baseUrl => 'just mock service';

  @override
  bool get enableLogs => true;

  @override
  String get name => 'mock';

  @override
  int get pagination => 10;
}
