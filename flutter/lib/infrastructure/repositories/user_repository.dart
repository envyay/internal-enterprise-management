import 'package:enterprise_management/infrastructure/data/dtos/api_requests/login_request_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/login_verify_dto.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/user_service/user_remote_data_source.dart';

import '../data/dtos/users/user_dto.dart';
import '../data/local/data_source/auth_local_data_source.dart';

abstract interface class IUserRepository {
  Future<List<UserDto>> getUsers();

  Future<UserDto> createUser({required String fullName, required String email});

  Future<bool?> loginRequest({required String email});

  Future<bool> loginVerify({required String email, required String otp});

  Future<String?> getAccessToken();
}

class UsersRepository implements IUserRepository {
  const UsersRepository({
    required this._userRemoteDataSource,
    required this._authLocalDataSource,
  });

  final UserRemoteDataSource _userRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;

  @override
  Future<UserDto> createUser({
    required String fullName,
    required String email,
  }) {
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  Future<String?> getAccessToken() {
    return _authLocalDataSource.getAccessToken();
  }

  @override
  Future<List<UserDto>> getUsers() {
    // TODO: implement getUsers
    throw UnimplementedError();
  }

  @override
  Future<bool?> loginRequest({required String email}) async {
    final res = await _userRemoteDataSource.loginRequest(
      LoginRequestDto(email: email),
    );
    return res.data;
  }

  @override
  Future<bool> loginVerify({required String email, required String otp}) async {
    final res = await _userRemoteDataSource.loginVerify(
      LoginVerifyDto(email: email, otp: otp),
    );
    var accessToken = res.data;
    await _authLocalDataSource.saveTokens(accessToken: accessToken ?? "");
    return true;
  }
}
