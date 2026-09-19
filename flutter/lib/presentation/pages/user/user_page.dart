import 'package:auto_route/auto_route.dart';
import 'package:enterprise_management/presentation/pages/user/controllers/users_controller.dart';
import 'package:enterprise_management/presentation/pages/user/widgets/create_user_dialog.dart';
import 'package:enterprise_management/presentation/pages/user/widgets/user_item.dart';
import 'package:enterprise_management/presentation/pages/user_group/widgets/user_group_item.dart';
import 'package:enterprise_management/presentation/widgets/base_page.dart';
import 'package:enterprise_management/presentation/widgets/overview_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';

@RoutePage()
class UserPage extends ConsumerWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(usersControllerProvider.notifier);
    final state = ref.watch(usersControllerProvider);
    return Scaffold(
      backgroundColor: const Color(0xffF8F9FF),
      body: BasePage(
        title: 'User Management',
        description:
        'You can manage User',
        child: Container(
          color: Colors.transparent,
          child: SingleChildScrollView(
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 4,
                  mainAxisCellCount: 2,
                  child: OverviewContainer(
                      title: 'Users',
                      icon: Assets.lib.infrastructure.assets.icons.create,
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Consumer(
                              builder: (context, ref, child) {
                                return CreateUserDialog();
                              },
                            );
                          },
                        );
                      },
                      child: state.when(
                      data: (users) {
                        return ListView.builder(
                          itemCount: users.length,
                          itemBuilder: (context, index) {
                            final item = users[index];
                            return UserItem(
                              fullName: item.fullName,
                              isActive: item.isActive,
                              onTap: () {
                                controller.onSelect(item.id);
                              }, user: item,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
