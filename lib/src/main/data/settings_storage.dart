import 'dart:convert';

import 'package:injectable/injectable.dart';

import 'package:migr_proj/src/main/entity/model/settings/settings.dart';
import 'package:migr_proj/src/shared/interfaces/i_storage.dart';

@LazySingleton()
class SettingStorage {
  const SettingStorage(this._storage);

  final IStorage _storage;

  String get key => '/setting';

  Future<void> save(Settings settings) => _storage.save<String>(key, jsonEncode(settings.toJson()));

  Future<Settings?> take() async {
    try {
      final String? data = await _storage.take<String>(key);

      if (data != null) {
        return Settings.fromJson(jsonDecode(data));
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  Future<void> delete() => _storage.delete<String>(key);
}
