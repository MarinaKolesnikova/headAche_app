abstract class IStorage {
  Future<Null> init();

  Future<T?> take<T>(String key);

  Future<void> save<T>(String key, T value);

  Future<void> delete<T>(String key);
}
