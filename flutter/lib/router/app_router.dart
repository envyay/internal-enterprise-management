import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: AuthenticationRoute.page),


    AutoRoute(
      page: MainRoute.page,
      initial: true,
      children: [
        AutoRoute(page: DashboardRoute.page, initial: true),
        AutoRoute(page: AdminPanelRoute.page),
        AutoRoute(page: KnowledgeBaseRoute.page),
        AutoRoute(page: ProjectTrackerRoute.page),
      ],
    ),
  ];
}