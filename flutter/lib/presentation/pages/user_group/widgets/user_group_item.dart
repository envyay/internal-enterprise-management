import 'package:enterprise_management/domain/aggregates/user_group/user_group.dart';
import 'package:enterprise_management/presentation/pages/user_group/controllers/user_groups_controller.dart';
import 'package:enterprise_management/presentation/pages/user_group/widgets/edit_user_group_dialog.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserGroupItem extends ConsumerWidget {
  const UserGroupItem({
    super.key,
    required this.name,
    this.isActive = false,
    this.onTap, required this.userGroup,
  });
  final UserGroup userGroup;
  final String name;
  final bool isActive;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(userGroupsControllerProvider.notifier);
    final router = ref.read(appRouterProvider);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xffEFF4FF) : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: isActive
            ? Border.all(color: const Color(0xff001E40), width: 1)
            : Border.all(color: const Color(0xffE0E2EC), width: 1),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    userGroup.name,
                    style: TextStyle(
                      color: isActive
                          ? const Color(0xff001E40)
                          : const Color(0xff43474F),
                      fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
                      fontSize: 14,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.edit_outlined,
                          size: 18,
                          color: Color(0xff006C49),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return EditUserGroupDialog(userGroup: userGroup,
                                
                              );
                            },
                          );
                        },
                        tooltip: 'Edit',
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.delete_outline,
                          size: 18,
                          color: Color(0xffBA1A1A),
                        ),
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
                        tooltip: 'Delete',
                      ),
                    ],
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