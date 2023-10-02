import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/job_card_category.dart';
import 'package:jobseque/core/widgets/job_image.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

import '../../domain/entities/job_entity.dart';

class JobDetailBodyHeader extends StatelessWidget {
  final JobEntity job;
  const JobDetailBodyHeader({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        JobImage(
          imageUrl: job.image ?? '',
          height: 48,
          width: 48,
        ),
        const VerticalSpace(space: 12),
        Text(
          job.name ?? '',
          textAlign: TextAlign.center,
          style: CustomTextStyles.h4Medium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 4),
        Text(
          job.location ?? '',
          textAlign: TextAlign.center,
          style: CustomTextStyles.textSRegular.copyWith(
            color: AppColors.neutral[700],
          ),
        ),
        const VerticalSpace(space: 16),
        JobCardCategory(job: job),
      ],
    );
  }
}
