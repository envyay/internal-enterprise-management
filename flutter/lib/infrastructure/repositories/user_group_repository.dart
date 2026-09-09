import 'package:enterprise_management/infrastructure/data/dtos/api_requests/add_users_to_user_group_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_user_group_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/delete_user_group_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/remove_user_from_user_group_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_user_group_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/user_groups/user_groups_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/user_group_service/user_group_remote_data_source.dart';

abstract interface class IUserGroupRepository {
  Future<List<UserGroupDto>> getUserGroups();
  Future<UserGroupDto> getUserGroupsById({required String id});
  Future<UserGroupDto> createUserGroups({required String name, required List<UserDto> userIds});
  Future<bool> updateUserGroupById({required String id, required String name, required List<UserDto> userIds});
  Future<bool> deleteUserGroupById({required String id});

  Future<bool> addUsersToUserGroup({required String id, required List<UserDto> userIds});
  Future<bool> removeUsersFromUserGroup({required String id, required UserDto userId});
}

class UserGroupRepository implements IUserGroupRepository {
  const UserGroupRepository({required this._userGroupRemoteDataSource});
  final UserGroupRemoteDataSource _userGroupRemoteDataSource;
  @override
  Future<UserGroupDto> createUserGroups({required String name, required List<UserDto> userIds}) async {
    final res = await _userGroupRemoteDataSource.createUserGroup(CreateUserGroupDto(name: name, userIds: userIds));
    return res.data;
  }

  @override
  Future<bool> deleteUserGroupById({required String id}) async {
    final res = await _userGroupRemoteDataSource.deleteUserGroupById(DeleteUserGroupDto(id: id));
    return res.data;
  }

  @override
  Future<List<UserGroupDto>> getUserGroups() async {
    final res = await _userGroupRemoteDataSource.getUserGroups();
    return res.data;
  }

  @override
  Future<UserGroupDto> getUserGroupsById({required String id}) {
    // TODO: implement getUserGroupsById
    throw UnimplementedError();
  }

  @override
  Future<bool> updateUserGroupById({required String id, required String name, required List<UserDto> userIds}) async {
    final res = await _userGroupRemoteDataSource.updateUserGroupById(UpdateUserGroupDto(id: id, name: name, userIds: userIds));
    return res.data;
  }

  @override
  Future<bool> addUsersToUserGroup({required String id, required List<UserDto> userIds}) async {
    final res = await _userGroupRemoteDataSource.addUsersToUserGroup(AddUsersToUserGroupDto(id: id, userIds: userIds));
    return res.data;
  }

  @override
  Future<bool> removeUsersFromUserGroup({required String id, required UserDto userId}) async {
    final res = await _userGroupRemoteDataSource.removeUserFromUserGroup(RemoveUserFromUserGroupDto(id: id, userId: userId));
    return res.data;
  }
}