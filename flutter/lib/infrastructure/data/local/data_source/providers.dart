import 'package:enterprise_management/infrastructure/data/local/data_source/auth_local_data_source.dart';
import 'package:enterprise_management/infrastructure/data/local/database/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';
@Riverpod(keepAlive: true)
AuthLocalDataSource authLocal(Ref ref) {
  final storage = ref.read(secureDatabaseProvider);
  return AuthLocalDataSource(storage: storage);
}