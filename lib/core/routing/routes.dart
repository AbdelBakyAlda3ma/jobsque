import 'package:auto_route/auto_route.dart';
import 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: WhichWillLaunchWidgetRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: CompleteProfileWrapper.page,
          children: [
            AutoRoute(page: CompleteProfileRoute.page),
            AutoRoute(page: PersonalDetailsRoute.page),
            AutoRoute(page: EducationRoute.page),
            AutoRoute(page: ExperienceRoute.page),
            AutoRoute(page: PortfolioRoute.page),
          ],
        ),
        AutoRoute(
          page: SearchWrapper.page,
          children: [
            AutoRoute(page: SearchRoute.page),
            AutoRoute(page: SetFilterModalBottomSheetRoute.page),
          ],
        ),
        AutoRoute(
          page: WorkPreferencesWrapper.page,
          children: [
            AutoRoute(page: WorkTypeRoute.page),
            AutoRoute(page: WorkLocationRoute.page),
          ],
        ),
        AutoRoute(page: ApplyJobStepperRoute.page),
        AutoRoute(page: DataSentSuccessfulyRoute.page),
        AutoRoute(page: AccountHasBeenSetUpRoute.page),
        AutoRoute(page: ChangePasswordProfileRoute.page),
        AutoRoute(page: ChangePasswordSuccessfullyRoute.page),
        AutoRoute(page: CheckYourEmailRoute.page),
        AutoRoute(page: CreateAccountRoute.page),
        AutoRoute(page: EmailAddressProfileRoute.page),
        AutoRoute(page: LoginAndSecurityProfileRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: ResetPasswordNewPasswordRoute.page),
        AutoRoute(page: ResetPasswordRoute.page),
        AutoRoute(page: TwoStepVerificationProfileRoute.page),
        AutoRoute(page: NoNotificationRoute.page),
        AutoRoute(page: NotificationRoute.page),
        AutoRoute(page: NotificationsProfileRoute.page),
        AutoRoute(page: OnboardingRoute.page),
        AutoRoute(page: SplashRoute.page),
        AutoRoute(page: HasCurrenUserWidgetRoute.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: JobDetailRoute.page),
        AutoRoute(page: InitialSearchRoute.page),
      ];
}
