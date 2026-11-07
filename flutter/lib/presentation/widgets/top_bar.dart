import 'package:enterprise_management/application/use_cases/users/user_sign_out/user_sign_out_command.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:enterprise_management/presentation/router/app_router.gr.dart';
import 'package:enterprise_management/shared_kernel/cqrs/mediator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopBar extends ConsumerWidget {
  const TopBar({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffF8F9FF),
        border: Border(bottom: BorderSide(color: Color(0xffC3C6D1))),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 16,
        children: [
          Row(
            spacing: 12,
            children: [
              InkWell(
                onTap: () => _showLogoutDialog(context, ref),
                child: Assets.lib.infrastructure.assets.icons.logout.svg(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            width: 420,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(width: 1, color: const Color(0xffC3C6D1)),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xffF8F9FF),
                    border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xffC3C6D1)),
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Confirm Logout',
                        style: TextStyle(
                          color: Color(0xff0B1C30),
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.of(dialogContext).pop(),
                        child: Assets.lib.infrastructure.assets.icons.close.svg(
                          width: 16,
                          height: 16,
                        ),
                      ),
                    ],
                  ),
                ),

                // Content
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: Text(
                    'Are you sure you want to sign out of your account?',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff43474F),
                      height: 1.4,
                    ),
                  ),
                ),

                // Actions
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1, color: Color(0xffE0E2EC)),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        onPressed: () => Navigator.of(dialogContext).pop(),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xff43474F),
                          side: const BorderSide(color: Color(0xffC3C6D1)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 10,
                          ),
                        ),
                        child: const Text('Cancel'),
                      ),
                      const SizedBox(width: 12),
                      ElevatedButton(
                        onPressed: () async {
                          Navigator.of(dialogContext).pop();
                          final mediator = ref.read(mediatorProvider);
                          await mediator.send(const UserSignOutCommand());
                          if (context.mounted) {
                            final appRouter = ref.read(appRouterProvider);
                            appRouter.replaceAll([const AuthenticationRoute()]);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffBA1A1A),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                        ),
                        child: const Text('Logout'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

}
