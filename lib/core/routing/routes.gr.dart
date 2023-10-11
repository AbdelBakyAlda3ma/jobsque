// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:jobseque/core/routing/wrappers/complete_profile_wrapper.dart'
    as _i2;
import 'package:jobseque/core/routing/wrappers/work_preferences_wrapper.dart'
    as _i8;
import 'package:jobseque/features/education/presentation/screens/education_screen.dart'
    as _i3;
import 'package:jobseque/features/experience/presentation/screens/experience_screen.dart'
    as _i4;
import 'package:jobseque/features/profile/presentation/screens/complete_profile_screen.dart'
    as _i1;
import 'package:jobseque/features/profile/presentation/screens/personal_details_screen.dart'
    as _i5;
import 'package:jobseque/features/portfolio/presentation/screens/portfolio_screen.dart'
    as _i6;
import 'package:jobseque/features/profile/presentation/screens/work_location_screen.dart'
    as _i7;
import 'package:jobseque/features/profile/presentation/screens/work_type_screen.dart'
    as _i9;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    CompleteProfileRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CompleteProfileScreen(),
      );
    },
    CompleteProfileWrapper.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CompleteProfileWrapper(),
      );
    },
    EducationRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.EducationScreen(),
      );
    },
    ExperienceRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ExperienceScreen(),
      );
    },
    PersonalDetailsRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.PersonalDetailsScreen(),
      );
    },
    PortfolioRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.PortfolioScreen(),
      );
    },
    WorkLocationRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.WorkLocationScreen(),
      );
    },
    WorkPreferencesWrapper.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.WorkPreferencesWrapper(),
      );
    },
    WorkTypeRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.WorkTypeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CompleteProfileScreen]
class CompleteProfileRoute extends _i10.PageRouteInfo<void> {
  const CompleteProfileRoute({List<_i10.PageRouteInfo>? children})
      : super(
          CompleteProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompleteProfileRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CompleteProfileWrapper]
class CompleteProfileWrapper extends _i10.PageRouteInfo<void> {
  const CompleteProfileWrapper({List<_i10.PageRouteInfo>? children})
      : super(
          CompleteProfileWrapper.name,
          initialChildren: children,
        );

  static const String name = 'CompleteProfileWrapper';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.EducationScreen]
class EducationRoute extends _i10.PageRouteInfo<void> {
  const EducationRoute({List<_i10.PageRouteInfo>? children})
      : super(
          EducationRoute.name,
          initialChildren: children,
        );

  static const String name = 'EducationRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ExperienceScreen]
class ExperienceRoute extends _i10.PageRouteInfo<void> {
  const ExperienceRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ExperienceRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExperienceRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.PersonalDetailsScreen]
class PersonalDetailsRoute extends _i10.PageRouteInfo<void> {
  const PersonalDetailsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          PersonalDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalDetailsRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.PortfolioScreen]
class PortfolioRoute extends _i10.PageRouteInfo<void> {
  const PortfolioRoute({List<_i10.PageRouteInfo>? children})
      : super(
          PortfolioRoute.name,
          initialChildren: children,
        );

  static const String name = 'PortfolioRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.WorkLocationScreen]
class WorkLocationRoute extends _i10.PageRouteInfo<void> {
  const WorkLocationRoute({List<_i10.PageRouteInfo>? children})
      : super(
          WorkLocationRoute.name,
          initialChildren: children,
        );

  static const String name = 'WorkLocationRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.WorkPreferencesWrapper]
class WorkPreferencesWrapper extends _i10.PageRouteInfo<void> {
  const WorkPreferencesWrapper({List<_i10.PageRouteInfo>? children})
      : super(
          WorkPreferencesWrapper.name,
          initialChildren: children,
        );

  static const String name = 'WorkPreferencesWrapper';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.WorkTypeScreen]
class WorkTypeRoute extends _i10.PageRouteInfo<void> {
  const WorkTypeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          WorkTypeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WorkTypeRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
