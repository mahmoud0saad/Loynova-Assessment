import 'package:loynova_app/core/storage/storage_keys.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@singleton
class SecureStorage {
  static SecureStorage? _instance;

  final _storage = const FlutterSecureStorage();

  static SecureStorage getInstance() {
    return _instance ??= SecureStorage();
  }

  Future<void> setValue(StorageKeys key, String? value) async {
    await _storage.write(key: key.key, value: value);
  }

  Future<String?> getValue(StorageKeys key) async {
    return await _storage.read(key: key.key);
  }

  Future<void> deleteValue(StorageKeys key) async {
    return await _storage.delete(key: key.key);
  }

  Future<void> deleteAll() async {
    await _storage.deleteAll();
  }
}
