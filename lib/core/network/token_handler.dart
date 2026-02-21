import 'package:injectable/injectable.dart';

import '../storage/secure_storage.dart';
import '../storage/storage_keys.dart';

@singleton
class TokenHandler {

  TokenHandler(this.secureStorage);
  final SecureStorage secureStorage;

  Future<String?> getUserToken() async {
    try {
      final token = await secureStorage.getValue(StorageKeys.accessToken);
      return token;
    } catch (e) {
      return null;
    }
  }

  Future<void> setUserToken(String token) async {
    await secureStorage.setValue(StorageKeys.accessToken, token);
  }

  Future<void> clearToken() async {
    await secureStorage.deleteValue(StorageKeys.accessToken);
  }

}
