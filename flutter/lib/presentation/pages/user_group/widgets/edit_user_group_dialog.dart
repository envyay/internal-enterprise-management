import 'package:auto_route/auto_route.dart';
import 'package:enterprise_management/domain/aggregates/user_group/user_group.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/pages/user_group/controllers/edit_user_group_form_controller.dart';
import 'package:enterprise_management/presentation/pages/user_group/controllers/user_groups_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditUserGroupDialog extends ConsumerWidget {
  const EditUserGroupDialog({super.key, required this.userGroup});

  final UserGroup userGroup;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(editUserGroupFormControllerProvider(userGroup).notifier);
    final state = ref.watch(editUserGroupFormControllerProvider(userGroup));
    final error = state.name.displayError?.errorMessage;

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Container(
        width: 480,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: 20,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
              decoration: const BoxDecoration(
                color: Color(0xFFF8F9FD),
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                border: Border(bottom: BorderSide(color: Color(0xFFE0E2EC))),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Edit User Group',
                    style: TextStyle(
                      color: Color(0xFF0B1C30),
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, size: 20, color: Color(0xFF43474F)),
                    onPressed: () => context.router.pop(),
                    splashRadius: 20,
                  ),
                ],
              ),
            ),

            // Form Content
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'User Group Name *',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF191C20),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    initialValue: state.name.value,
                    onChanged: (value) => controller.setName(value),
                    decoration: InputDecoration(
                      hintText: 'Enter user group name',
                      hintStyle: const TextStyle(color: Color(0xFF90909A), fontSize: 13),
                      errorText: error,
                      filled: true,
                      fillColor: const Color(0xFFFBFBFF),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xFFC3C6D1)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xFFC3C6D1)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xFF001E40), width: 1.5),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xFFBA1A1A)),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xFFBA1A1A), width: 1.5),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Actions
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        onPressed: () => context.router.pop(),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xFF43474F),
                          side: const BorderSide(color: Color(0xFFC3C6D1)),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: const Text('Cancel'),
                      ),
                      const SizedBox(width: 12),
                      ElevatedButton(
                        onPressed: () async {
                          await controller.edit();
                          ref.invalidate(userGroupsControllerProvider);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF001E40),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          elevation: 0,
                        ),
                        child: const Text('Save Changes'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
