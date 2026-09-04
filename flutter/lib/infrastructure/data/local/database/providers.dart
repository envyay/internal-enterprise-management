import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';
@Riverpod(keepAlive: true)
FlutterSecureStorage secureDatabase(Ref ref) {
  return FlutterSecureStorage();
}