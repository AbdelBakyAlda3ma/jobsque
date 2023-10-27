import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/widgets/loding_widget.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/get_favorite_jobs_bloc/get_favorite_jobs_bloc.dart';
import 'package:jobseque/features/favorites/presentation/widgets/no_thing_saved_body.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_jobs_screen_success.dart';

class SavedJobsScreenBody extends StatelessWidget {
  const SavedJobsScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetFavoriteJobsBloc, GetFavoriteJobsState>(
      builder: (context, state) {
        if (state is GetFavoriteJobsSuccess) {
          return SavedJobsBodySuccess(
            jobs: state.listOfFavoriteJobs,
          );
        }
        if (state is GetFavoriteJobsFailure) {
          return const NothingSavedBody();
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}
