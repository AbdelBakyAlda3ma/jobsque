import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/get_active_applied_jobs_bloc/get_active_applied_jobs_bloc.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/favorite_operation_bloc/favorite_operation_bloc.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_screen_scaffold.dart';

class HomeScreenSafeArea extends StatelessWidget {
  const HomeScreenSafeArea({
    super.key,
    required this.routeName,
  });

  final String routeName;

  @override
  Widget build(BuildContext context) {
    return BlocListener<FavoriteOperationBloc, FavoriteOperationState>(
      listener: (context, state) {
        if (state is AddFavoriteDone || state is DeleteFavoriteDone) {
          BlocProvider.of<GetActiveAppliedJobsBloc>(context)
              .add(GetActiveAppliedJobsEvent());
        }
      },
      child: SafeArea(
        child: HomeScreenScaffold(
          routeName: routeName,
        ),
      ),
    );
  }
}
