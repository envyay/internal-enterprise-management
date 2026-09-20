import 'package:auto_route/auto_route.dart';
import 'package:enterprise_management/presentation/pages/user/controllers/users_controller.dart';
import 'package:enterprise_management/presentation/pages/user/widgets/create_user_dialog.dart';
import 'package:enterprise_management/presentation/pages/user/widgets/users_table.dart';
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
        description: 'You can manage User',
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
                    child: Column(
                      children: [
                        Container(
                          padding: .symmetric(horizontal: 16),
                          child: Table(
                            border: TableBorder(
                              bottom: BorderSide(
                                color: Color(0xffC3C6D1),
                                width: 1.5,
                              ),
                            ),
                            columnWidths: {
                              0: FixedColumnWidth(500),
                              1: FlexColumnWidth(4),
                              2: FlexColumnWidth(),
                              3: FlexColumnWidth(),
                            },
                            children: [
                              TableRow(
                                children: [
                                  Container(
                                    padding: .symmetric(vertical: 16),
                                    child: Text(
                                      'Full Name',
                                      style: TextStyle(
                                        color: Color(0xff43474F),
                                        fontWeight: .w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: .symmetric(vertical: 16),
                                    child: Text(
                                      'Email',
                                      style: TextStyle(
                                        color: Color(0xff43474F),
                                        fontWeight: .w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: .symmetric(vertical: 16),
                                    child: Text(
                                      'Status',
                                      style: TextStyle(
                                        color: Color(0xff43474F),
                                        fontWeight: .w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: .symmetric(vertical: 16),
                                    alignment: .centerRight,
                                    child: Text(
                                      'Actions',
                                      style: TextStyle(
                                        color: Color(0xff43474F),
                                        fontWeight: .w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(child: UsersTable()),
                      ],
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
