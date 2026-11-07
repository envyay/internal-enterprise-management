import 'dart:convert';

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

  Future<void> deleteAccessToken() async {
    return await _storage.delete(key: 'accessToken');
  }

  Future<void> deletePolicies() async {
    return await _storage.delete(key: 'policies');
  }

  Future<void> savePolicies(List<String> policies) async {
    await _storage.write(key: 'policies', value: jsonEncode(policies));
  }

  Future<List<String>?> getPolicies() async {
    final res = await _storage.read(key: 'policies');
    if (res == null) return null;

    return (jsonDecode(res) as List<dynamic>).map((x) => x as String).toList();
  }
}