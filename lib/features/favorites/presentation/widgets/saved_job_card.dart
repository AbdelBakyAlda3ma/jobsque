import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_job_card_post_date.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_job_card_title.dart';

import '../../../../core/utils/global/app_colors.dart';

class SavedJobCard extends StatelessWidget {
  const SavedJobCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SavedJobCardTitle(),
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
