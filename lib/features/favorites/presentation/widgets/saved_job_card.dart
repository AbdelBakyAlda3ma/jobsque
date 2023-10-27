import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_job_card_post_date.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_job_card_title.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

import '../../../../core/utils/global/app_colors.dart';

class SavedJobCard extends StatelessWidget {
  final JobEntity job;
  const SavedJobCard({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SavedJobCardTitle(
          job: job,
        ),
        const VerticalSpace(space: 16),
        const SavedjobCardPostDate(),
        const VerticalSpace(space: 16),
        Divider(
          thickness: 1,
          height: 0,
          color: AppColors.neutral[200],
        )
      ],
    );
  }
}
