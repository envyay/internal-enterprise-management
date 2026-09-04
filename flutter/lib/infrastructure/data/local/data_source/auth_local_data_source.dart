import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthLocalDataSource {
  const AuthLocalDataSource({required this._storage});

  final FlutterSecureStorage _storage;

  Future<void> saveTokens({required String accessToken}) async {
    await _storage.write(key: 'accessToken', value: accessToken);
  }

  Future<String?> getAccessToken() async {
    return await _storage.read(key: 'accessToken');
  }
}