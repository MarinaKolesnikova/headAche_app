import 'package:migr_proj/src/shared/interfaces/i_storage.dart';

class MockStorage implements IStorage {
  final Map<String, dynamic> _storage = {};
  @override
  Future<Null> init() async {
    print('MockStorage was initialized');
  }

  @override
  Future<void> save<T>(String key, T value) async {
    print('item ${T.runtimeType} was saved');
  }

  @override
  Future<T?> take<T>(String key) async {
    final object = _storage[key];
    return object;
  }

  @override
  Future<void> delete<T>(String key) async {
    print('item ${T.runtimeType} was deleted');
  }
}
