import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/presentation/pages/user/controllers/users_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddUsersDialog extends ConsumerStatefulWidget {
  const AddUsersDialog({
    super.key,
    this.initialSelectedUserIds = const {},
    this.onSave,
  });

  final Set<String> initialSelectedUserIds;
  final void Function(List<User> selectedUsers)? onSave;

  @override
  ConsumerState<AddUsersDialog> createState() => _AddUsersDialogState();
}

class _AddUsersDialogState extends ConsumerState<AddUsersDialog> {
  late final Set<String> _selectedUserIds;
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _selectedUserIds = Set.from(widget.initialSelectedUserIds);
  }

  @override
  Widget build(BuildContext context) {
    final usersState = ref.watch(usersControllerProvider);

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        width: 520,
        height: 600,
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            const Text(
              'Add Users',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF191C20),
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Select users from the list below.',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF74777F),
              ),
            ),
            const SizedBox(height: 16),

            // Search Bar
            TextField(
              onChanged: (val) {
                setState(() {
                  _searchQuery = val;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search by name or email...',
                prefixIcon: const Icon(Icons.search, size: 20),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: const BorderSide(color: Color(0xFFC3C6D1)),
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Users List
            Expanded(
              child: usersState.when(
                data: (users) {
                  var filteredUsers = users;
                  if (_searchQuery.isNotEmpty) {
                    filteredUsers = users
                        .where((u) =>
                            u.fullName
                                .toLowerCase()
                                .contains(_searchQuery.toLowerCase()) ||
                            u.email
                                .toLowerCase()
                                .contains(_searchQuery.toLowerCase()))
                        .toList();
                  }

                  if (filteredUsers.isEmpty) {
                    return const Center(
                      child: Text(
                        'No users found',
                        style: TextStyle(color: Color(0xFF74777F)),
                      ),
                    );
                  }

                  return ListView.separated(
                    itemCount: filteredUsers.length,
                    separatorBuilder: (context, index) =>
                        const Divider(height: 1),
                    itemBuilder: (context, index) {
                      final user = filteredUsers[index];
                      final isSelected = _selectedUserIds.contains(user.id);
                      final isActiveStatus = user.status == 1;

                      final name = user.fullName.isNotEmpty
                          ? user.fullName
                          : 'No Name';
                      final parts = name.trim().split(' ');
                      final initials = parts.length >= 2
                          ? '${parts.first[0]}${parts.last[0]}'.toUpperCase()
                          : (name.isNotEmpty ? name[0].toUpperCase() : 'U');

                      return CheckboxListTile(
                        value: isSelected,
                        onChanged: (val) {
                          setState(() {
                            if (val == true) {
                              _selectedUserIds.add(user.id);
                            } else {
                              _selectedUserIds.remove(user.id);
                            }
                          });
                        },
                        secondary: CircleAvatar(
                          backgroundColor: const Color(0xFFD6E4FF),
                          radius: 18,
                          child: Text(
                            initials,
                            style: const TextStyle(
                              color: Color(0xFF001D4A),
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        title: Row(
                          children: [
                            Expanded(
                              child: Text(
                                name,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF191C20),
                                ),
                              ),
                            ),
                            // Status Badge (Active / InActive)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: isActiveStatus
                                    ? const Color(0xFFE6F4EA)
                                    : const Color(0xFFFCE8E6),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: isActiveStatus
                                      ? const Color(0xFF137333)
                                      : const Color(0xFFC5221F),
                                  width: 0.8,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 6,
                                    height: 6,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: isActiveStatus
                                          ? const Color(0xFF137333)
                                          : const Color(0xFFC5221F),
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    isActiveStatus ? 'Active' : 'InActive',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: isActiveStatus
                                          ? const Color(0xFF137333)
                                          : const Color(0xFFC5221F),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        subtitle: user.email.isNotEmpty
                            ? Text(
                                user.email,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF74777F),
                                ),
                              )
                            : null,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 8),
                      );
                    },
                  );
                },
                error: (err, stack) => const Center(
                  child: Text('Error loading users list'),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Action Buttons (Cancel & Save)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(
                  onPressed: () => Navigator.pop(context),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: const Text('Cancel'),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () {
                    final allUsers = usersState.value ?? [];
                    final selectedUsers = allUsers
                        .where((u) => _selectedUserIds.contains(u.id))
                        .toList();

                    if (widget.onSave != null) {
                      widget.onSave!(selectedUsers);
                    }
                    Navigator.pop(context, selectedUsers);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF005AC1),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: const Text('Save'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
