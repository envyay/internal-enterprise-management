import 'package:enterprise_management/presentation/pages/user/controllers/users_controller.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListUnassignedUsers extends ConsumerWidget {
  const ListUnassignedUsers({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(usersControllerProvider);
    final controller = ref.read(usersControllerProvider.notifier);
    final router = ref.read(appRouterProvider);
    return state.when(
      data: (users) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: ListView.separated(
              itemCount: users.length,
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemBuilder: (context, index) {
                final user = users[index];
                final name = user.fullName;
                final parts = name.trim().split(' ');
                final initials = parts.length >= 2
                    ? '${parts.first[0]}${parts.last[0]}'.toUpperCase()
                    : (name.isNotEmpty ? name[0].toUpperCase() : '');

                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8F9FF),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: const Color(0xFFC3C6D1),
                      width: 1.0,
                    ),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.drag_indicator,
                        size: 20,
                        color: Color(0xFF72777F),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        width: 36,
                        height: 36,
                        decoration: const BoxDecoration(
                          color: Color(0xFFD6E4FF),
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          initials,
                          style: const TextStyle(
                            color: Color(0xFF001D4A),
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
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
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
      error: (error, stackTrace) {
        return const Text('Error');
      },
      loading: () {
        return const Text('Loading...');
      },
    );
  }
}
