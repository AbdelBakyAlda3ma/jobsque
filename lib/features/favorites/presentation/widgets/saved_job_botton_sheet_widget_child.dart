import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/custom_bottom_sheet_item.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/delete_favorite_bloc/delete_favorite_bloc.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

class SavedJobBottomSheetWidgetChild extends StatelessWidget {
  const SavedJobBottomSheetWidgetChild({
    super.key,
    required this.job,
  });

  final JobEntity job;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomBottomSheetItem(
            icon: IconsJobeque.directboxdefault,
            text: 'Apply Job',
            onTap: () {
              context.router.push(
                ApplyJobStepperRoute(
                  job: job,
                ),
              );
            },
          ),
          const VerticalSpace(space: 12),
          const CustomBottomSheetItem(
            icon: IconsJobeque.exportIcon,
            text: 'Share via...',
          ),
          const VerticalSpace(space: 12),
          CustomBottomSheetItem(
            icon: IconsJobeque.archiveminus,
            text: 'Cancel save',
            onTap: () {
              BlocProvider.of<DeleteFavoriteBloc>(context).add(
                DeleteFavoriteEvent(
                  job: job,
                ),
              );
            },
          ),
          const VerticalSpace(space: 40),
        ],
      ),
    );
  }
}
