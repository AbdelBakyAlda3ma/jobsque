// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i45;
import 'package:flutter/material.dart' as _i46;
import 'package:jobseque/core/routing/wrappers/complete_profile_wrapper.dart'
    as _i7;
import 'package:jobseque/core/routing/wrappers/search_wrapper.dart' as _i36;
import 'package:jobseque/core/routing/wrappers/work_preferences_wrapper.dart'
    as _i43;
import 'package:jobseque/features/apply_job/presentation/screens/apply_job_stepper_screen.dart'
    as _i2;
import 'package:jobseque/features/apply_job/presentation/screens/data_sent_successfuly_screen.dart'
    as _i9;
import 'package:jobseque/features/auth/domain/entities/user_entity.dart'
    as _i47;
import 'package:jobseque/features/auth/presentation/screens/account_has_been_set_up_screen.dart'
    as _i1;
import 'package:jobseque/features/auth/presentation/screens/change_password_profile_screen.dart'
    as _i3;
import 'package:jobseque/features/auth/presentation/screens/change_password_successfully.dart'
    as _i4;
import 'package:jobseque/features/auth/presentation/screens/check_your_email_screen.dart'
    as _i5;
import 'package:jobseque/features/auth/presentation/screens/create_account_screen.dart'
    as _i8;
import 'package:jobseque/features/auth/presentation/screens/email_address_profile_screen.dart'
    as _i12;
import 'package:jobseque/features/auth/presentation/screens/login_and_security_profile_screen.dart'
    as _i20;
import 'package:jobseque/features/auth/presentation/screens/login_screen.dart'
    as _i21;
import 'package:jobseque/features/auth/presentation/screens/reset_password_new_password_screen.dart'
    as _i32;
import 'package:jobseque/features/auth/presentation/screens/reset_password_screen.dart'
    as _i33;
import 'package:jobseque/features/auth/presentation/screens/two_step_verification_profile_screen.dart'
    as _i40;
import 'package:jobseque/features/auth/presentation/widget/has_current_user_widget.dart'
    as _i14;
import 'package:jobseque/features/education/presentation/screens/education_screen.dart'
    as _i11;
import 'package:jobseque/features/experience/presentation/screens/experience_screen.dart'
    as _i13;
import 'package:jobseque/features/favorites/presentation/screens/no_thing_saved_screen.dart'
    as _i23;
import 'package:jobseque/features/favorites/presentation/screens/saved_jobs_screen.dart'
    as _i34;
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart' as _i48;
import 'package:jobseque/features/jobs/presentation/screens/home_screen.dart'
    as _i16;
import 'package:jobseque/features/jobs/presentation/screens/initial_search_screen.dart'
    as _i17;
import 'package:jobseque/features/jobs/presentation/screens/job_detail_screen.dart'
    as _i18;
import 'package:jobseque/features/jobs/presentation/screens/search_screen.dart'
    as _i35;
import 'package:jobseque/features/jobs/presentation/widgets/set_filter_modal_bottom_sheet.dart'
    as _i37;
import 'package:jobseque/features/notifications/presentation/screens/no_notification_screen.dart'
    as _i22;
import 'package:jobseque/features/notifications/presentation/screens/notifications_profile_screen.dart'
    as _i25;
import 'package:jobseque/features/notifications/presentation/screens/notifications_screen.dart'
    as _i24;
import 'package:jobseque/features/onbording/presentation/screens/onboarding_screen.dart'
    as _i26;
import 'package:jobseque/features/onbording/presentation/screens/splash_screen.dart'
    as _i38;
import 'package:jobseque/features/onbording/presentation/screens/which_will_launch_widget.dart'
    as _i41;
import 'package:jobseque/features/portfolio/presentation/screens/portfolio_screen.dart'
    as _i29;
import 'package:jobseque/features/profile/presentation/screens/complete_profile_screen.dart'
    as _i6;
import 'package:jobseque/features/profile/presentation/screens/edit_profile_screen.dart'
    as _i10;
import 'package:jobseque/features/profile/presentation/screens/help_center_screen.dart'
    as _i15;
import 'package:jobseque/features/profile/presentation/screens/language_screen.dart'
    as _i19;
import 'package:jobseque/features/profile/presentation/screens/personal_details_screen.dart'
    as _i27;
import 'package:jobseque/features/profile/presentation/screens/phone_number_profile_screen.dart'
    as _i28;
import 'package:jobseque/features/profile/presentation/screens/privacy_policy_screen.dart'
    as _i30;
import 'package:jobseque/features/profile/presentation/screens/profile_screen.dart'
    as _i31;
import 'package:jobseque/features/profile/presentation/screens/terms_and_conditinos_screen.dart'
    as _i39;
import 'package:jobseque/features/profile/presentation/screens/work_location_screen.dart'
    as _i42;
import 'package:jobseque/features/profile/presentation/screens/work_type_screen.dart'
    as _i44;

abstract class $AppRouter extends _i45.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i45.PageFactory> pagesMap = {
    AccountHasBeenSetUpRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountHasBeenSetUpScreen(),
      );
    },
    ApplyJobStepperRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ApplyJobStepperScreen(),
      );
    },
    ChangePasswordProfileRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ChangePasswordProfileScreen(),
      );
    },
    ChangePasswordSuccessfullyRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ChangePasswordSuccessfullyScreen(),
      );
    },
    CheckYourEmailRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CheckYourEmailScreen(),
      );
    },
    CompleteProfileRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.CompleteProfileScreen(),
      );
    },
    CompleteProfileWrapper.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.CompleteProfileWrapper(),
      );
    },
    CreateAccountRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.CreateAccountScreen(),
      );
    },
    DataSentSuccessfulyRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.DataSentSuccessfulyScreen(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.EditProfileScreen(),
      );
    },
    EducationRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.EducationScreen(),
      );
    },
    EmailAddressProfileRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.EmailAddressProfileScreen(),
      );
    },
    ExperienceRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.ExperienceScreen(),
      );
    },
    HasCurrenUserWidgetRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.HasCurrenUserWidget(),
      );
    },
    HelpCenterRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.HelpCenterScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouteArgs>();
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.HomeScreen(
          key: args.key,
          user: args.user,
        ),
      );
    },
    InitialSearchRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.InitialSearchScreen(),
      );
    },
    JobDetailRoute.name: (routeData) {
      final args = routeData.argsAs<JobDetailRouteArgs>();
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.JobDetailScreen(
          key: args.key,
          job: args.job,
        ),
      );
    },
    LanguageRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.LanguageScreen(),
      );
    },
    LoginAndSecurityProfileRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.LoginAndSecurityProfileScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.LoginScreen(),
      );
    },
    NoNotificationRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.NoNotificationScreen(),
      );
    },
    NoThingSavedRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.NoThingSavedScreen(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.NotificationScreen(),
      );
    },
    NotificationsProfileRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.NotificationsProfileScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.OnboardingScreen(),
      );
    },
    PersonalDetailsRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.PersonalDetailsScreen(),
      );
    },
    PhoneNumberProfileRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i28.PhoneNumberProfileScreen(),
      );
    },
    PortfolioRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i29.PortfolioScreen(),
      );
    },
    PrivacyPolicyRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i30.PrivacyPolicyScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i31.ProfileScreen(),
      );
    },
    ResetPasswordNewPasswordRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i32.ResetPasswordNewPasswordScreen(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i33.ResetPasswordScreen(),
      );
    },
    SavedJobsRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i34.SavedJobsScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i35.SearchScreen(),
      );
    },
    SearchWrapper.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i36.SearchWrapper(),
      );
    },
    SetFilterModalBottomSheetRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i37.SetFilterModalBottomSheet(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i38.SplashScreen(),
      );
    },
    TermsAndConditinosRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i39.TermsAndConditinosScreen(),
      );
    },
    TwoStepVerificationProfileRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i40.TwoStepVerificationProfileScreen(),
      );
    },
    WhichWillLaunchWidgetRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i41.WhichWillLaunchWidget(),
      );
    },
    WorkLocationRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i42.WorkLocationScreen(),
      );
    },
    WorkPreferencesWrapper.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i43.WorkPreferencesWrapper(),
      );
    },
    WorkTypeRoute.name: (routeData) {
      return _i45.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i44.WorkTypeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountHasBeenSetUpScreen]
class AccountHasBeenSetUpRoute extends _i45.PageRouteInfo<void> {
  const AccountHasBeenSetUpRoute({List<_i45.PageRouteInfo>? children})
      : super(
          AccountHasBeenSetUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountHasBeenSetUpRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ApplyJobStepperScreen]
class ApplyJobStepperRoute extends _i45.PageRouteInfo<void> {
  const ApplyJobStepperRoute({List<_i45.PageRouteInfo>? children})
      : super(
          ApplyJobStepperRoute.name,
          initialChildren: children,
        );

  static const String name = 'ApplyJobStepperRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ChangePasswordProfileScreen]
class ChangePasswordProfileRoute extends _i45.PageRouteInfo<void> {
  const ChangePasswordProfileRoute({List<_i45.PageRouteInfo>? children})
      : super(
          ChangePasswordProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangePasswordProfileRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ChangePasswordSuccessfullyScreen]
class ChangePasswordSuccessfullyRoute extends _i45.PageRouteInfo<void> {
  const ChangePasswordSuccessfullyRoute({List<_i45.PageRouteInfo>? children})
      : super(
          ChangePasswordSuccessfullyRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangePasswordSuccessfullyRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CheckYourEmailScreen]
class CheckYourEmailRoute extends _i45.PageRouteInfo<void> {
  const CheckYourEmailRoute({List<_i45.PageRouteInfo>? children})
      : super(
          CheckYourEmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckYourEmailRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i6.CompleteProfileScreen]
class CompleteProfileRoute extends _i45.PageRouteInfo<void> {
  const CompleteProfileRoute({List<_i45.PageRouteInfo>? children})
      : super(
          CompleteProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompleteProfileRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i7.CompleteProfileWrapper]
class CompleteProfileWrapper extends _i45.PageRouteInfo<void> {
  const CompleteProfileWrapper({List<_i45.PageRouteInfo>? children})
      : super(
          CompleteProfileWrapper.name,
          initialChildren: children,
        );

  static const String name = 'CompleteProfileWrapper';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i8.CreateAccountScreen]
class CreateAccountRoute extends _i45.PageRouteInfo<void> {
  const CreateAccountRoute({List<_i45.PageRouteInfo>? children})
      : super(
          CreateAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateAccountRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i9.DataSentSuccessfulyScreen]
class DataSentSuccessfulyRoute extends _i45.PageRouteInfo<void> {
  const DataSentSuccessfulyRoute({List<_i45.PageRouteInfo>? children})
      : super(
          DataSentSuccessfulyRoute.name,
          initialChildren: children,
        );

  static const String name = 'DataSentSuccessfulyRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i10.EditProfileScreen]
class EditProfileRoute extends _i45.PageRouteInfo<void> {
  const EditProfileRoute({List<_i45.PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i11.EducationScreen]
class EducationRoute extends _i45.PageRouteInfo<void> {
  const EducationRoute({List<_i45.PageRouteInfo>? children})
      : super(
          EducationRoute.name,
          initialChildren: children,
        );

  static const String name = 'EducationRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i12.EmailAddressProfileScreen]
class EmailAddressProfileRoute extends _i45.PageRouteInfo<void> {
  const EmailAddressProfileRoute({List<_i45.PageRouteInfo>? children})
      : super(
          EmailAddressProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmailAddressProfileRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i13.ExperienceScreen]
class ExperienceRoute extends _i45.PageRouteInfo<void> {
  const ExperienceRoute({List<_i45.PageRouteInfo>? children})
      : super(
          ExperienceRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExperienceRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i14.HasCurrenUserWidget]
class HasCurrenUserWidgetRoute extends _i45.PageRouteInfo<void> {
  const HasCurrenUserWidgetRoute({List<_i45.PageRouteInfo>? children})
      : super(
          HasCurrenUserWidgetRoute.name,
          initialChildren: children,
        );

  static const String name = 'HasCurrenUserWidget';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i15.HelpCenterScreen]
class HelpCenterRoute extends _i45.PageRouteInfo<void> {
  const HelpCenterRoute({List<_i45.PageRouteInfo>? children})
      : super(
          HelpCenterRoute.name,
          initialChildren: children,
        );

  static const String name = 'HelpCenterRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i16.HomeScreen]
class HomeRoute extends _i45.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i46.Key? key,
    required _i47.UserEntity user,
    List<_i45.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i45.PageInfo<HomeRouteArgs> page =
      _i45.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    required this.user,
  });

  final _i46.Key? key;

  final _i47.UserEntity user;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i17.InitialSearchScreen]
class InitialSearchRoute extends _i45.PageRouteInfo<void> {
  const InitialSearchRoute({List<_i45.PageRouteInfo>? children})
      : super(
          InitialSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitialSearchRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i18.JobDetailScreen]
class JobDetailRoute extends _i45.PageRouteInfo<JobDetailRouteArgs> {
  JobDetailRoute({
    _i46.Key? key,
    required _i48.JobEntity job,
    List<_i45.PageRouteInfo>? children,
  }) : super(
          JobDetailRoute.name,
          args: JobDetailRouteArgs(
            key: key,
            job: job,
          ),
          initialChildren: children,
        );

  static const String name = 'JobDetailRoute';

  static const _i45.PageInfo<JobDetailRouteArgs> page =
      _i45.PageInfo<JobDetailRouteArgs>(name);
}

class JobDetailRouteArgs {
  const JobDetailRouteArgs({
    this.key,
    required this.job,
  });

  final _i46.Key? key;

  final _i48.JobEntity job;

  @override
  String toString() {
    return 'JobDetailRouteArgs{key: $key, job: $job}';
  }
}

/// generated route for
/// [_i19.LanguageScreen]
class LanguageRoute extends _i45.PageRouteInfo<void> {
  const LanguageRoute({List<_i45.PageRouteInfo>? children})
      : super(
          LanguageRoute.name,
          initialChildren: children,
        );

  static const String name = 'LanguageRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i20.LoginAndSecurityProfileScreen]
class LoginAndSecurityProfileRoute extends _i45.PageRouteInfo<void> {
  const LoginAndSecurityProfileRoute({List<_i45.PageRouteInfo>? children})
      : super(
          LoginAndSecurityProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginAndSecurityProfileRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i21.LoginScreen]
class LoginRoute extends _i45.PageRouteInfo<void> {
  const LoginRoute({List<_i45.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i22.NoNotificationScreen]
class NoNotificationRoute extends _i45.PageRouteInfo<void> {
  const NoNotificationRoute({List<_i45.PageRouteInfo>? children})
      : super(
          NoNotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NoNotificationRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i23.NoThingSavedScreen]
class NoThingSavedRoute extends _i45.PageRouteInfo<void> {
  const NoThingSavedRoute({List<_i45.PageRouteInfo>? children})
      : super(
          NoThingSavedRoute.name,
          initialChildren: children,
        );

  static const String name = 'NoThingSavedRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i24.NotificationScreen]
class NotificationRoute extends _i45.PageRouteInfo<void> {
  const NotificationRoute({List<_i45.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i25.NotificationsProfileScreen]
class NotificationsProfileRoute extends _i45.PageRouteInfo<void> {
  const NotificationsProfileRoute({List<_i45.PageRouteInfo>? children})
      : super(
          NotificationsProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsProfileRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i26.OnboardingScreen]
class OnboardingRoute extends _i45.PageRouteInfo<void> {
  const OnboardingRoute({List<_i45.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i27.PersonalDetailsScreen]
class PersonalDetailsRoute extends _i45.PageRouteInfo<void> {
  const PersonalDetailsRoute({List<_i45.PageRouteInfo>? children})
      : super(
          PersonalDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalDetailsRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i28.PhoneNumberProfileScreen]
class PhoneNumberProfileRoute extends _i45.PageRouteInfo<void> {
  const PhoneNumberProfileRoute({List<_i45.PageRouteInfo>? children})
      : super(
          PhoneNumberProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhoneNumberProfileRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i29.PortfolioScreen]
class PortfolioRoute extends _i45.PageRouteInfo<void> {
  const PortfolioRoute({List<_i45.PageRouteInfo>? children})
      : super(
          PortfolioRoute.name,
          initialChildren: children,
        );

  static const String name = 'PortfolioRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i30.PrivacyPolicyScreen]
class PrivacyPolicyRoute extends _i45.PageRouteInfo<void> {
  const PrivacyPolicyRoute({List<_i45.PageRouteInfo>? children})
      : super(
          PrivacyPolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicyRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i31.ProfileScreen]
class ProfileRoute extends _i45.PageRouteInfo<void> {
  const ProfileRoute({List<_i45.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i32.ResetPasswordNewPasswordScreen]
class ResetPasswordNewPasswordRoute extends _i45.PageRouteInfo<void> {
  const ResetPasswordNewPasswordRoute({List<_i45.PageRouteInfo>? children})
      : super(
          ResetPasswordNewPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordNewPasswordRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i33.ResetPasswordScreen]
class ResetPasswordRoute extends _i45.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i45.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i34.SavedJobsScreen]
class SavedJobsRoute extends _i45.PageRouteInfo<void> {
  const SavedJobsRoute({List<_i45.PageRouteInfo>? children})
      : super(
          SavedJobsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SavedJobsRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i35.SearchScreen]
class SearchRoute extends _i45.PageRouteInfo<void> {
  const SearchRoute({List<_i45.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i36.SearchWrapper]
class SearchWrapper extends _i45.PageRouteInfo<void> {
  const SearchWrapper({List<_i45.PageRouteInfo>? children})
      : super(
          SearchWrapper.name,
          initialChildren: children,
        );

  static const String name = 'SearchWrapper';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i37.SetFilterModalBottomSheet]
class SetFilterModalBottomSheetRoute extends _i45.PageRouteInfo<void> {
  const SetFilterModalBottomSheetRoute({List<_i45.PageRouteInfo>? children})
      : super(
          SetFilterModalBottomSheetRoute.name,
          initialChildren: children,
        );

  static const String name = 'SetFilterModalBottomSheet';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i38.SplashScreen]
class SplashRoute extends _i45.PageRouteInfo<void> {
  const SplashRoute({List<_i45.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i39.TermsAndConditinosScreen]
class TermsAndConditinosRoute extends _i45.PageRouteInfo<void> {
  const TermsAndConditinosRoute({List<_i45.PageRouteInfo>? children})
      : super(
          TermsAndConditinosRoute.name,
          initialChildren: children,
        );

  static const String name = 'TermsAndConditinosRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i40.TwoStepVerificationProfileScreen]
class TwoStepVerificationProfileRoute extends _i45.PageRouteInfo<void> {
  const TwoStepVerificationProfileRoute({List<_i45.PageRouteInfo>? children})
      : super(
          TwoStepVerificationProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'TwoStepVerificationProfileRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i41.WhichWillLaunchWidget]
class WhichWillLaunchWidgetRoute extends _i45.PageRouteInfo<void> {
  const WhichWillLaunchWidgetRoute({List<_i45.PageRouteInfo>? children})
      : super(
          WhichWillLaunchWidgetRoute.name,
          initialChildren: children,
        );

  static const String name = 'WhichWillLaunchWidget';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i42.WorkLocationScreen]
class WorkLocationRoute extends _i45.PageRouteInfo<void> {
  const WorkLocationRoute({List<_i45.PageRouteInfo>? children})
      : super(
          WorkLocationRoute.name,
          initialChildren: children,
        );

  static const String name = 'WorkLocationRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i43.WorkPreferencesWrapper]
class WorkPreferencesWrapper extends _i45.PageRouteInfo<void> {
  const WorkPreferencesWrapper({List<_i45.PageRouteInfo>? children})
      : super(
          WorkPreferencesWrapper.name,
          initialChildren: children,
        );

  static const String name = 'WorkPreferencesWrapper';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}

/// generated route for
/// [_i44.WorkTypeScreen]
class WorkTypeRoute extends _i45.PageRouteInfo<void> {
  const WorkTypeRoute({List<_i45.PageRouteInfo>? children})
      : super(
          WorkTypeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WorkTypeRoute';

  static const _i45.PageInfo<void> page = _i45.PageInfo<void>(name);
}
