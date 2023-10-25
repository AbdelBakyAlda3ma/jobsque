import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/show_active_applied_jobs_bloc/show_active_applied_jobs_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/applied_job_screen_safe_area.dart';

@RoutePage()
class AppliedJobsScreen extends StatelessWidget {
  static String routeName = AppliedJobsRoute.name;

  const AppliedJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log('applied job screen has been builded');
    return BlocProvider<ShowActiveAppliedJobsBloc>(
      lazy: false,
      create: (context) => sL.get<ShowActiveAppliedJobsBloc>()
        ..add(
          ShowActiveAppliedJobsEvent(),
        ),
      child: AppliedJobScreenSafeArea(
        routeName: routeName,
      ),
    );
  }
}
