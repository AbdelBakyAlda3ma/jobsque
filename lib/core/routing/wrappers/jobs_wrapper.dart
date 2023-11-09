import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/get_active_applied_jobs_bloc/get_active_applied_jobs_bloc.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/favorite_operation_bloc/favorite_operation_bloc.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/get_favorite_jobs_bloc/get_favorite_jobs_bloc.dart';
import 'package:jobseque/features/jobs/presentation/manager/get_jobs_bloc/get_jobs_bloc.dart';

@RoutePage()
class JobsWrapper extends StatelessWidget {
  const JobsWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetJobsBloc>(
          create: (context) => sL.get<GetJobsBloc>(),
        ),
        BlocProvider<FavoriteOperationBloc>(
          create: (context) => sL.get<FavoriteOperationBloc>(),
        ),
        BlocProvider<GetFavoriteJobsBloc>(
          create: (context) => sL.get<GetFavoriteJobsBloc>(),
        ),
        BlocProvider<GetActiveAppliedJobsBloc>(
          create: (context) => sL.get<GetActiveAppliedJobsBloc>(),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}
