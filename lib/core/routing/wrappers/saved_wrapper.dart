import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/show_active_applied_jobs_bloc/show_active_applied_jobs_bloc.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/favorite_operation_bloc/favorite_operation_bloc.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/get_favorite_jobs_bloc/get_favorite_jobs_bloc.dart';
import 'package:jobseque/features/jobs/presentation/manager/blocs/Job_bloc/job_bloc.dart';

@RoutePage()
class SavedWrapper extends StatelessWidget {
  const SavedWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<JobBloc>(
          create: (context) => sL.get<JobBloc>(),
        ),
        BlocProvider<FavoriteOperationBloc>(
          create: (context) => sL.get<FavoriteOperationBloc>(),
        ),
        BlocProvider<GetFavoriteJobsBloc>(
          create: (context) => sL.get<GetFavoriteJobsBloc>(),
        ),
        BlocProvider<ShowActiveAppliedJobsBloc>(
          create: (context) => sL.get<ShowActiveAppliedJobsBloc>(),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}
