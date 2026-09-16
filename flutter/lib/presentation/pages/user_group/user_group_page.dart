import 'package:auto_route/auto_route.dart';
import 'package:enterprise_management/presentation/pages/user_group/controllers/user_groups_controller.dart';
import 'package:enterprise_management/presentation/pages/user_group/widgets/create_user_group_dialog.dart';
import 'package:enterprise_management/presentation/pages/user_group/widgets/user_group_item.dart';
import 'package:enterprise_management/presentation/widgets/base_page.dart';
import 'package:enterprise_management/presentation/widgets/overview_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';

@RoutePage()
class UserGroupPage extends ConsumerWidget {
  const UserGroupPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(userGroupsControllerProvider.notifier);
    final state = ref.watch(userGroupsControllerProvider);
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
                              }, userGroup: item,
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
                StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 2,
                  child: OverviewContainer(
                    title: 'Role-Based Access Control (RBAC)',
                    child: Column(children: [Text('data')]),
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
