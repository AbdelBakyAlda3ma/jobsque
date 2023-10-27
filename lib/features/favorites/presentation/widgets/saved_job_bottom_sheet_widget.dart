import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/delete_favorite_bloc/delete_favorite_bloc.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/get_favorite_jobs_bloc/get_favorite_jobs_bloc.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_job_botton_sheet_widget_child.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

@RoutePage()
class SavedJobBottomSheetWidget extends StatelessWidget {
  final JobEntity job;
  const SavedJobBottomSheetWidget({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeleteFavoriteBloc, DeleteFavoriteState>(
      listener: (context, state) {
        if (state is DeleteFavoriteDone) {
          BlocProvider.of<GetFavoriteJobsBloc>(context).add(
            GetFavoriteJobsEvent(),
          );
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
