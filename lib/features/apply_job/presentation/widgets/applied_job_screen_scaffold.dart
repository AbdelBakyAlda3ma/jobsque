import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/widgets/custom_app_bar.dart';
import 'package:jobseque/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/applied_job_screen_body.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/favorite_operation_bloc/favorite_operation_bloc.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/get_favorite_jobs_bloc/get_favorite_jobs_bloc.dart';
import 'package:jobseque/features/jobs/presentation/manager/get_jobs_bloc/get_jobs_bloc.dart';

class AppliedJobScreenScaffold extends StatelessWidget {
  final String routeName;
  const AppliedJobScreenScaffold({
    super.key,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<FavoriteOperationBloc, FavoriteOperationState>(
      listener: (context, state) {
        if (state is AddFavoriteDone || state is DeleteFavoriteDone) {
          BlocProvider.of<GetJobsBloc>(context).add(GetJobsEvent());
          BlocProvider.of<GetFavoriteJobsBloc>(context).add(
            GetFavoriteJobsEvent(),
          );
        }
      },
      child: Scaffold(
        appBar: const CustomAppBar(
          title: 'Applied Job',
        ),
        body: const AppliedJobScreenBody(),
        bottomNavigationBar: CustomBottomNavigationBar(
          routeName: routeName,
        ),
      ),
    );
  }
}
