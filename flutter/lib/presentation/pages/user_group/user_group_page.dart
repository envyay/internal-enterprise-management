import 'package:auto_route/auto_route.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:enterprise_management/presentation/pages/department/widgets/add_users_dialog.dart';
import 'package:enterprise_management/presentation/pages/user_group/controllers/policies_in_user_group_controller.dart';
import 'package:enterprise_management/presentation/pages/user_group/controllers/user_groups_controller.dart';
import 'package:enterprise_management/presentation/pages/user_group/controllers/users_in_user_group_controller.dart';
import 'package:enterprise_management/presentation/pages/user_group/widgets/create_user_group_dialog.dart';
import 'package:enterprise_management/presentation/pages/user_group/widgets/policies_in_user_group.dart';
import 'package:enterprise_management/presentation/pages/user_group/widgets/user_group_item.dart';
import 'package:enterprise_management/presentation/pages/user_group/widgets/users_in_user_group.dart';
import 'package:enterprise_management/presentation/widgets/base_page.dart';
import 'package:enterprise_management/presentation/widgets/overview_container.dart';
import 'package:enterprise_management/shared_kernel/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../controllers/policies_controller.dart';

@RoutePage()
class UserGroupPage extends ConsumerWidget {
  const UserGroupPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(userGroupsControllerProvider.notifier);
    final state = ref.watch(userGroupsControllerProvider);

    final selectedUserGroup = state.value
        ?.where((item) => item.isActive)
        .firstOrNull;

    final policiesInUserGroupState = ref.watch(
      policiesInUserGroupControllerProvider,
    );
    final policiesInUserGroupController = ref.watch(
      policiesInUserGroupControllerProvider.notifier,
    );

    final policies = ref.watch(
      policiesControllerProvider.select((x) => x.value ?? []),
    );

    return Scaffold(
      backgroundColor: const Color(0xffF8F9FF),
      body: BasePage(
        title: 'User Group Management',
        description:
            'You can manage user group by adding roles and users into.',
        child: Container(
          color: Colors.transparent,
          child: SingleChildScrollView(
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: OverviewContainer(
                    title: 'User Groups',
                    icon: policies.contains(AppPolicy.createUserGroup)
                        ? Assets.lib.infrastructure.assets.icons.create
                        : null,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Consumer(
                            builder: (context, ref, child) {
                              return CreateUserGroupDialog();
                            },
                          );
                        },
                      );
                    },
                    child: state.when(
                      data: (userGroups) {
                        if (userGroups.isEmpty) {
                          return const Center(
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.group_outlined, size: 36, color: Color(0xFFC3C6D1)),
                                  SizedBox(height: 8),
                                  Text(
                                    'No user groups found',
                                    style: TextStyle(color: Color(0xFF74777F), fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                        return ListView.separated(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                          itemCount: userGroups.length,
                          separatorBuilder: (context, index) => const SizedBox(height: 6),
                          itemBuilder: (context, index) {
                            final item = userGroups[index];
                            return UserGroupItem(
                              name: item.name,
                              isActive: item.isActive,
                              onTap: () {
                                controller.onSelect(item.id);
                              },
                              userGroup: item,
                            );
                          },
                        );
                      },
                      error: (error, stackTrace) => const Center(
                        child: Text('Error loading user groups', style: TextStyle(color: Color(0xFFBA1A1A))),
                      ),
                      loading: () => const Center(child: CircularProgressIndicator()),
                    ),
                  ),
                ),
                if (selectedUserGroup != null &&
                    policies.contains(AppPolicy.getUsersByUserGroupId))
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 2,
                    child: OverviewContainer(
                      title: 'User In User Groups',
                      icon: policies.contains(AppPolicy.setUsersInUserGroup)
                          ? Assets.lib.infrastructure.assets.icons.create
                          : null,
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Consumer(
                              builder: (context, ref, child) {
                                final state = ref.watch(
                                  usersInUserGroupControllerProvider,
                                );
                                final controller = ref.watch(
                                  usersInUserGroupControllerProvider.notifier,
                                );
                                final userGroup = state.value;
                                return AddUsersDialog(
                                  initialSelectedUserIds:
                                      userGroup?.users
                                          .map((item) => item.id)
                                          .toSet() ??
                                      {},
                                  onSave: (users) {
                                    controller.setUsersInUserGroup(
                                      id: selectedUserGroup.id,
                                      userIds: users
                                          .map((item) => item.id)
                                          .toList(),
                                    );
                                  },
                                );
                              },
                            );
                          },
                        );
                      },
                      child: const UsersInUserGroup(),
                    ),
                  ),
                if (policies.contains(AppPolicy.getAllUserGroupPolicies))
                  StaggeredGridTile.count(
                    crossAxisCellCount: selectedUserGroup != null ? 2 : 3,
                    mainAxisCellCount: 2,
                    child: OverviewContainer(
                      title: 'Role-Based Access Control (RBAC)',
                      child: selectedUserGroup == null
                          ? const Center(
                              child: Text(
                                'Select a user group to view and configure policies',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF74777F),
                                ),
                              ),
                            )
                          : policiesInUserGroupState.when(
                              data: (group) {
                                return PoliciesInUserGroup(
                                  key: ValueKey(selectedUserGroup.id),
                                  initialSelectedPolicyIds:
                                      group?.userGroupPolicies
                                          .map((item) => item.policy)
                                          .toSet() ??
                                      {},
                                  onSave: (policies) async {
                                    await policiesInUserGroupController
                                        .setPoliciesInUserGroup(
                                          id: selectedUserGroup.id,
                                          policies: policies
                                              .map((item) => item.policy)
                                              .toList(),
                                        );
                                    if (context.mounted) {
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                            'Policies updated successfully',
                                          ),
                                          backgroundColor: Color(0xFF005AC1),
                                          duration: Duration(seconds: 2),
                                        ),
                                      );
                                    }
                                  },
                                );
                              },
                              loading: () => const Center(
                                child: CircularProgressIndicator(),
                              ),
                              error: (error, stack) => const Center(
                                child: Text(
                                  'Error loading policies for this user group',
                                ),
                              ),
                            ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
