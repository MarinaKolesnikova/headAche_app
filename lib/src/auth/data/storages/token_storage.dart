import 'dart:async';
import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:migr_proj/src/auth/entity/models/token/token.dart';
import 'package:migr_proj/src/shared/interfaces/i_storage.dart';

@LazySingleton()
class TokenStorage {
  TokenStorage(this._storage);

  final IStorage _storage;

  String get key => '/token';

  Token? _token;

  Future<void> save(Token token) {
    _token = token;
    return _storage.save<String>(key, jsonEncode(token.toJson()));
  }

  FutureOr<Token?> take() async {
    if (_token == null) {
      final String? tokenStr = await _storage.take<String>(key);

      if (tokenStr != null) {
        return _token = Token.fromJson(jsonDecode(tokenStr));
      }
    }
    return _token;
  }

  Future<void> delete() {
    _token = null;
    return _storage.delete<String>(key);
  }
}
