import 'package:auto_route/auto_route.dart';
import 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: CompleteProfileWrapper.page,
          // path: '/',
          // initial: true,
          children: [
            AutoRoute(page: CompleteProfileRoute.page, initial: true),
            AutoRoute(page: PersonalDetailsRoute.page),
            AutoRoute(page: EducationRoute.page),
            AutoRoute(page: ExperienceRoute.page),
            AutoRoute(page: PortfolioRoute.page),
          ],
        ),
        AutoRoute(
          page: WorkPreferencesWrapper.page,
          path: '/',
          initial: true,
          children: [
            AutoRoute(page: WorkTypeRoute.page, initial: true),
            AutoRoute(page: WorkLocationRoute.page),
          ],
        ),
      ];
}
