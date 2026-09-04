import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: AuthenticationRoute.page, initial: true),


    AutoRoute(
      page: MainRoute.page,
      // initial: true,
      children: [
        AutoRoute(page: DashboardRoute.page),
        AutoRoute(page: AdminPanelRoute.page),
        AutoRoute(page: KnowledgeBaseRoute.page),
        AutoRoute(page: ProjectTrackerRoute.page),
      ],
    ),
  ];
}


final appRouterProvider = Provider<AppRouter>((ref) {
  return AppRouter();
});