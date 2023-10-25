import 'package:auto_route/auto_route.dart';
import 'routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen|Widget,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: WhichWillLaunchRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: CompleteProfileWrapperRoute.page,
          children: [
            AutoRoute(page: CompleteProfileRoute.page),
            AutoRoute(page: PersonalDetailsRoute.page),
            AutoRoute(page: EducationRoute.page),
            AutoRoute(page: ExperienceRoute.page),
            AutoRoute(page: PortfolioRoute.page),
          ],
        ),
        AutoRoute(
          page: SearchWrapperRoute.page,
          children: [
            AutoRoute(page: SearchRoute.page),
            AutoRoute(page: SetFilterModalBottomSheetRoute.page),
          ],
        ),
        AutoRoute(
          page: WorkPreferencesWrapperRoute.page,
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
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: HasCurrenUserRoute.page),
        AutoRoute(page: JobDetailRoute.page),
        AutoRoute(page: InitialSearchRoute.page),
        AutoRoute(page: SplashRoute.page),
        AutoRoute(page: ChattingRoute.page),
        AutoRoute(page: NotRecievedMessagesRoute.page),
        AutoRoute(page: UnreadedMessagesRoute.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: MessagesRoute.page),
        AutoRoute(page: AppliedJobsRoute.page),
        AutoRoute(page: SavedJobsRoute.page),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: InProgressAppliedJobRoute.page),
      ];
}
