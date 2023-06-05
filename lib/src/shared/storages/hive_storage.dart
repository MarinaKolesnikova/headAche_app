import 'package:logging/logging.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:migr_proj/src/shared/interfaces/i_storage.dart';

class HiveStorage implements IStorage {
  HiveStorage._();

  factory HiveStorage() => _instance;

  static final HiveStorage _instance = HiveStorage._();

  static const String _storage_key = '/storage_box';

  Logger get _logger => Logger('[$runtimeType]');

  late final LazyBox box;

  @override
  Future<Null> init() async {
    await Hive.initFlutter();

    box = await Hive.openLazyBox(_storage_key);
  }

  @override
  Future<T?> take<T>(String key) async {
    final LazyBox<T> _nBox = await Hive.openLazyBox<T>(key);
    final response = await _nBox.get(key);
    _logger.info('key $key => map $response response type ${response.runtimeType}');
    await _nBox.close();
    return response;
  }

  @override
  Future<void> save<T>(String key, T value) async {
    _logger.info('key $key => map $value');
    final _nBox = await Hive.openLazyBox<T>(key);
    await _nBox.put(key, value);
    await _nBox.close();
  }

  @override
  Future<void> delete<T>(String key) async {
    final _nBox = await Hive.openLazyBox<T>(key);
    await _nBox.delete(key);
    await _nBox.close();
  }
}
