import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/get_active_applied_jobs_bloc/get_active_applied_jobs_bloc.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/favorite_operation_bloc/favorite_operation_bloc.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/get_favorite_jobs_bloc/get_favorite_jobs_bloc.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_job_botton_sheet_widget_child.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/presentation/manager/get_jobs_bloc/get_jobs_bloc.dart';

@RoutePage()
class SavedJobBottomSheetWidget extends StatelessWidget {
  final JobEntity job;
  const SavedJobBottomSheetWidget({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<FavoriteOperationBloc, FavoriteOperationState>(
      listener: (context, state) {
        if (state is DeleteFavoriteDone) {
          BlocProvider.of<GetFavoriteJobsBloc>(context).add(
            GetFavoriteJobsEvent(),
          );
          BlocProvider.of<GetJobsBloc>(context).add(GetJobsEvent());
          BlocProvider.of<GetActiveAppliedJobsBloc>(context)
              .add(GetActiveAppliedJobsEvent());

          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.router.pop();
          });
        }
      },
      child: SavedJobBottomSheetWidgetChild(
        job: job,
      ),
    );
  }
}
