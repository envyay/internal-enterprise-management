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
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
                    icon: Assets.lib.infrastructure.assets.icons.create,
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
                        return ListView.builder(
                          itemCount: userGroups.length,
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
                      error: (error, stackTrace) {
                        return const Text('Error');
                      },
                      loading: () {
                        return const Text('Loading...');
                      },
                    ),
                  ),
                ),
                if (selectedUserGroup != null)
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 2,
                    child: OverviewContainer(
                      title: 'User In User Groups',
                      icon: Assets.lib.infrastructure.assets.icons.create,
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
                                    ScaffoldMessenger.of(context).showSnackBar(
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
