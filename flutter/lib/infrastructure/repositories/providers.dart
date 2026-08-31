import 'package:enterprise_management/infrastructure/remote/data_source/user_service/providers.dart';
import 'package:enterprise_management/infrastructure/repositories/users_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
IUserRepository userRepository(Ref ref) {
  final userRemoteDataSource = ref.read(userRemoteProvider);
  return UsersRepository(userRemoteDataSource: userRemoteDataSource);
}