import 'package:enterprise_management/domain/aggregates/user_group/user_group.dart';
import 'package:enterprise_management/presentation/pages/user_group/controllers/user_groups_controller.dart';
import 'package:enterprise_management/presentation/pages/user_group/widgets/edit_user_group_dialog.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:enterprise_management/shared_kernel/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../controllers/policies_controller.dart';

class UserGroupItem extends ConsumerWidget {
  const UserGroupItem({
    super.key,
    required this.name,
    this.isActive = false,
    this.onTap,
    required this.userGroup,
  });

  final UserGroup userGroup;
  final String name;
  final bool isActive;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(userGroupsControllerProvider.notifier);
    final router = ref.read(appRouterProvider);

    final policies = ref.watch(
      policiesControllerProvider.select((x) => x.value ?? []),
    );

    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFEFF4FF) : Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isActive ? const Color(0xFF005AC1) : const Color(0xFFE0E2EC),
          width: isActive ? 1.5 : 1.0,
        ),
        boxShadow: isActive
            ? [
                BoxShadow(
                  color: const Color(0xFF005AC1).withValues(alpha: 0.08),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ]
            : null,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          hoverColor: const Color(0xFFF4F7FC),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
            child: Row(
              children: [
                // Group Name
                Expanded(
                  child: Text(
                    userGroup.name,
                    style: TextStyle(
                      color: isActive
                          ? const Color(0xFF001E40)
                          : const Color(0xFF191C20),
                      fontWeight: isActive
                          ? FontWeight.w600
                          : FontWeight.w500,
                      fontSize: 14,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 10),

                // Members Pill Badge
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: isActive ? const Color(0xFFD6E4FF) : const Color(0xFFF0F4FD),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: isActive ? const Color(0xFF90B9F8) : const Color(0xFFD3E0F3),
                      width: 0.8,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.group_outlined,
                        size: 14,
                        color: isActive
                            ? const Color(0xFF00326D)
                            : const Color(0xFF43474F),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${userGroup.users.length}',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: isActive
                              ? const Color(0xFF00326D)
                              : const Color(0xFF334B68),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),

                // Actions: Edit & Delete
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (policies.contains(AppPolicy.updateUserGroup))
                      IconButton(
                        icon: const Icon(Icons.edit_outlined, size: 16),
                        color: const Color(0xFF006C49),
                        tooltip: 'Edit User Group',
                        splashRadius: 16,
                        constraints: const BoxConstraints(minWidth: 28, minHeight: 28),
                        padding: const EdgeInsets.all(4),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return EditUserGroupDialog(userGroup: userGroup);
                            },
                          );
                        },
                      ),
                    if (policies.contains(AppPolicy.deleteUserGroup))
                      IconButton(
                        icon: const Icon(Icons.delete_outline, size: 16),
                        color: const Color(0xFFBA1A1A),
                        tooltip: 'Delete User Group',
                        splashRadius: 16,
                        constraints: const BoxConstraints(minWidth: 28, minHeight: 28),
                        padding: const EdgeInsets.all(4),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Delete Confirmation'),
                              content: Text(
                                'Are you sure to delete "${userGroup.name}"?',
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => router.pop(context),
                                  child: const Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () async {
                                    await controller.delete(userGroup.id);
                                    router.pop();
                                  },
                                  child: const Text(
                                    'Delete',
                                    style: TextStyle(
                                      color: Color(0xffBA1A1A),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
