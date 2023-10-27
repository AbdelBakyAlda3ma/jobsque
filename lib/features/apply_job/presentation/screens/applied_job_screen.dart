import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/show_active_applied_jobs_bloc/show_active_applied_jobs_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/applied_job_screen_safe_area.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/add_favorite_bloc/add_favorite_bloc.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/delete_favorite_bloc/delete_favorite_bloc.dart';

@RoutePage()
class AppliedJobsScreen extends StatelessWidget {
  static String routeName = AppliedJobsRoute.name;

  const AppliedJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log('applied job screen has been builded');
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddFavoriteBloc>(
          create: (context) => sL.get<AddFavoriteBloc>(),
        ),
        BlocProvider<DeleteFavoriteBloc>(
          create: (context) => sL.get<DeleteFavoriteBloc>(),
        ),
        BlocProvider<ShowActiveAppliedJobsBloc>(
          lazy: false,
          create: (context) => sL.get<ShowActiveAppliedJobsBloc>()
            ..add(
              ShowActiveAppliedJobsEvent(),
            ),
        ),
      ],
      child: AppliedJobScreenSafeArea(
        routeName: routeName,
      ),
    );
  }
}
