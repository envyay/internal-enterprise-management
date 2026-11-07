import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/domain/aggregates/user_group/user_group.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/add_users_to_user_group_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_user_group_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/remove_user_from_user_group_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/set_policies_in_user_group_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/set_users_in_user_group_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_user_group_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/user_groups/user_groups_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/user_group_service/user_group_remote_data_source.dart';

abstract interface class IUserGroupRepository {
  Future<List<UserGroup>> getUserGroups();
  Future<UserGroup> getUserGroupById({required String id});
  Future<UserGroup> createUserGroups({required String name, required List<UserDto> userIds});
  Future<bool> updateUserGroupById({required String id, required String name, required List<String?> userIds});
  Future<bool> deleteUserGroupById({required String id});

  Future<List<User>> getUsersByUserGroupId({required String id});
  Future<bool> setUsersInUserGroup({required String id, required List<String> userIds});
  Future<bool> setPoliciesInUserGroup({required String id, required List<String> policies});

  Future<bool> addUsersToUserGroup({required String id, required List<String> userIds});
  Future<bool> removeUsersFromUserGroup({required String id, required UserDto userId});
}

class UserGroupRepository implements IUserGroupRepository {
  const UserGroupRepository({required this._userGroupRemoteDataSource});
  final UserGroupRemoteDataSource _userGroupRemoteDataSource;
  @override
  Future<UserGroup> createUserGroups({required String name, required List<UserDto> userIds}) async {
    final res = await _userGroupRemoteDataSource.createUserGroup(CreateUserGroupDto(name: name, userIds: userIds));
    return res.data.map((item) => item.toAggregate());
  }

  @override
  Future<bool> deleteUserGroupById({required String id}) async {
    final res = await _userGroupRemoteDataSource.deleteUserGroupById(id);
    return res.data;
  }

  @override
  Future<List<UserGroup>> getUserGroups() async {
    final res = await _userGroupRemoteDataSource.getUserGroups();
    return res.data.map((item) => item.toAggregate()).toList();
  }

  @override
  Future<UserGroup> getUserGroupById({required String id}) async {
    final res = await _userGroupRemoteDataSource.getUserGroupById(id);
    return res.data.map((item) => item.toAggregate());
  }

  @override
  Future<bool> updateUserGroupById({required String id, required String name, required List<String?> userIds}) async {
    final res = await _userGroupRemoteDataSource.updateUserGroupById(UpdateUserGroupDto(id: id, name: name, userIds: userIds));
    return res.data;
  }

  @override
  Future<bool> addUsersToUserGroup({required String id, required List<String> userIds}) async {
    final res = await _userGroupRemoteDataSource.addUsersToUserGroup(AddUsersToUserGroupDto(id: id, userIds: userIds));
    return res.data;
  }

  @override
  Future<bool> removeUsersFromUserGroup({required String id, required UserDto userId}) async {
    final res = await _userGroupRemoteDataSource.removeUserFromUserGroup(RemoveUserFromUserGroupDto(id: id, userId: userId));
    return res.data;
  }

  @override
  Future<List<User>> getUsersByUserGroupId({required String id}) async {
    final res = await _userGroupRemoteDataSource.getUsersByUserGroupId(id);
    return res.data.map((item) => item.toAggregate()).toList();
  }

  @override
  Future<bool> setPoliciesInUserGroup({required String id, required List<String> policies}) async {
    final res = await _userGroupRemoteDataSource.setPoliciesInUserGroup(SetPoliciesInUserGroupDto(id: id, policies: policies));
    return res.data;
  }

  @override
  Future<bool> setUsersInUserGroup({required String id, required List<String> userIds}) async {
    final res = await _userGroupRemoteDataSource.setUsersInUserGroup(SetUsersInUserGroupDto(id: id, userIds: userIds));
    return res.data;
  }
}